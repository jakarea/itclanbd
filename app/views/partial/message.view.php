<?php if(isset($_SESSION['message'])): ?>
	<div class="alert alert-<?= isset($_SESSION['alert'])? $_SESSION['alert'] : 'info'; ?>">
        <?=  $_SESSION['message'] ?>
    </div>
    <?php unset($_SESSION['message']) ?>
<?php endif; ?>	
<div class="container">
    <div class="row">
        <div class="col align-self-center">
            <a href="{{ route('laporans.show',$id) }}" data-toggle="tooltip" data-original-title="Show" class="btn btn-primary ">
                 <i class="fa fa-eye" aria-hidden="true"></i>
                </a>
        </div>
        <div class="col align-self-center">
            <a href="{{ route('laporans.edit',$id) }}" data-toggle="tooltip" data-original-title="Edit" class="edit btn btn-success edit">
             <i class="fa fa-pencil" aria-hidden="true"></i>
                </a>
        </div>
        <div class="col align-self-center">
                <a href="javascript:void(0)" data-id="{{ $id }}" data-toggle="tooltip" data-original-title="Delete" class="delete btn btn-danger">
                     <i class="fa fa-trash" aria-hidden="true"></i>
                    </a>
        </div>

    </div>
    <div class="row">
        
        </div>
    </div>

    <div class="row">
            
            </div>
     </div>

  
 
</div>
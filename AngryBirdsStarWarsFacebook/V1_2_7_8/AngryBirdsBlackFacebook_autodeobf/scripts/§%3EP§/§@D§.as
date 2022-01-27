package §>P§
{
   public class §@D§ extends §&"T§
   {
      
      public static const §5;§:String = "icicles";
       
      
      public function §@D§(param1:Object, param2:int, param3:§1C§, param4:§&s§, param5:int, param6:Boolean = false, param7:§?[§ = null)
      {
         super(param1,param2,param3,param4,param5,param6,param7);
      }
      
      override protected function readStateAnimations(param1:Object) : Array
      {
         var _loc3_:Array = null;
         var _loc2_:Array = super.readStateAnimations(param1);
         if(_loc2_)
         {
            _loc3_ = [["1",["P_ICICLE_1","P_ICICLE_2","P_ICICLE_3"]]];
            _loc2_.push([§5;§,_loc3_]);
         }
         return _loc2_;
      }
   }
}

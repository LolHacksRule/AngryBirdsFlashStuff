package §2"Y§
{
   public class §="p§ extends §%#@§
   {
      
      public static const §1a§:String = "icicles";
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §1a§ = "icicles";
         }
      }
      
      public function §="p§(param1:Object, param2:int, param3:§&!x§, param4:§'#2§, param5:int, param6:Boolean = false, param7:§%"3§ = null)
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         if(!(_loc8_ && param3))
         {
            super(param1,param2,param3,param4,param5,param6,param7);
         }
      }
      
      override protected function readStateAnimations(param1:Object) : Array
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:Array = null;
         var _loc2_:Array = super.readStateAnimations(param1);
         if(_loc5_)
         {
            if(_loc2_)
            {
               addr39:
               §§push(["1",["P_ICICLE_1","P_ICICLE_2","P_ICICLE_3"]]);
               if(!(_loc4_ && _loc2_))
               {
                  §§push(null);
               }
               _loc3_ = §§pop();
               if(!_loc4_)
               {
                  _loc2_.push([§1a§,_loc3_]);
               }
            }
            return _loc2_;
         }
         §§goto(addr39);
      }
   }
}

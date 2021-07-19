package §&!F§
{
   import §-!u§.§2u§;
   import §-!u§.§@!c§;
   import §0"$§.§"!a§;
   import §0"$§.§;§;
   
   public class §5v§ extends §@!c§
   {
       
      
      private var §9!P§:§"!a§;
      
      private var §@!t§:String = "";
      
      public function §5v§(param1:Number, param2:Number, param3:§"!a§, param4:Array = null, param5:Class = null, param6:Number = 0, param7:Number = 1.7976931348623157E308)
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         if(_loc9_ || param3)
         {
            this.§9!P§ = param3;
         }
         do
         {
            super(param1,param2,param4,param5,param6,param7);
         }
         while(_loc8_ && this);
         
      }
      
      public function set §9F§(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§@!t§ = param1;
         }
      }
      
      override public function dispose() : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc1_:§7n§ = null;
         if(_loc4_ || _loc3_)
         {
            super.dispose();
         }
         for each(_loc1_ in §1`§)
         {
            if(!(_loc5_ && this))
            {
               _loc1_.disposeRovioButton(this.§9!P§);
            }
         }
      }
      
      override protected function setRendererData(param1:§2u§, param2:Object) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            super.setRendererData(param1,param2);
            do
            {
               (param1 as §7n§).§<!m§(this.§9!P§,this.§@!t§);
            }
            while(_loc3_ && this);
            
         }
      }
      
      public function §&!c§(param1:int) : §;§
      {
         return (§+7§[param1] as §7n§).§+!6§(true);
      }
      
      override protected function hide(param1:§2u§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            (param1 as §7n§).hide(this.§9!P§);
            do
            {
               super.hide(param1);
            }
            while(!(_loc2_ || param1));
            
         }
      }
      
      public function get §!4§() : int
      {
         return §8! §;
      }
   }
}

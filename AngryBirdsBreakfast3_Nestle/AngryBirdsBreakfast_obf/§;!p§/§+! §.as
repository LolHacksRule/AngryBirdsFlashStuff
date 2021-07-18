package §;!p§
{
   import §2u§.§,6§;
   import §2u§.§]"%§;
   import §74§.§^M§;
   import §74§.§^z§;
   
   public class §+! § extends §^M§
   {
       
      
      private var §try§:§,6§;
      
      private var §&"3§:String = "";
      
      public function §+! §(param1:Number, param2:Number, param3:§,6§, param4:Array = null, param5:Class = null, param6:Number = 0, param7:Number = 1.7976931348623157E308)
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         if(_loc8_)
         {
            this.§try§ = param3;
         }
         do
         {
            super(param1,param2,param4,param5,param6,param7);
         }
         while(_loc9_ && param1);
         
      }
      
      public function set §7!5§(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§&"3§ = param1;
         }
      }
      
      override public function dispose() : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc1_:§#!N§ = null;
         if(!_loc4_)
         {
            super.dispose();
         }
         for each(_loc1_ in §>!q§)
         {
            if(_loc5_ || _loc1_)
            {
               _loc1_.disposeRovioButton(this.§try§);
            }
         }
      }
      
      override protected function setRendererData(param1:§^z§, param2:Object) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            super.setRendererData(param1,param2);
            do
            {
               (param1 as §#!N§).§9e§(this.§try§,this.§&"3§);
            }
            while(!(_loc4_ || param2));
            
         }
      }
      
      public function §2!E§(param1:int) : §]"%§
      {
         return (§>1§[param1] as §#!N§).§""-§(true);
      }
      
      override protected function hide(param1:§^z§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc3_))
         {
            (param1 as §#!N§).hide(this.§try§);
         }
         do
         {
            super.hide(param1);
         }
         while(_loc2_ && param1);
         
      }
      
      public function get §="4§() : int
      {
         return §-!3§;
      }
   }
}

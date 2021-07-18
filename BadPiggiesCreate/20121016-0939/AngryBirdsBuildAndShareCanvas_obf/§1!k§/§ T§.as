package §1!k§
{
   import §8=§.§36§;
   import §=b§.§%"2§;
   
   public class § T§ extends §^!B§ implements §!Z§
   {
       
      
      protected var §#!7§:§36§;
      
      public function § T§(param1:§%"2§)
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            super(param1,0);
         }
      }
      
      public function get §1q§() : §36§
      {
         return this.§#!7§;
      }
      
      public function set §1q§(param1:§36§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc3_))
         {
            this.§#!7§ = param1;
         }
         while(this.§#!7§ != null)
         {
            if(!(_loc3_ && _loc3_))
            {
               §[m§ = this.§#!7§.duration;
            }
            if(!(_loc3_ && _loc2_))
            {
               break;
            }
         }
      }
      
      override protected function newInstance() : §^!B§
      {
         return new § T§(§1!I§);
      }
      
      override protected function internalUpdate(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§#!7§.update(param1);
         }
      }
      
      public function get target() : Object
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || this)
         {
            §§push(this.§#!7§);
            if(_loc1_)
            {
               return §§pop() != null ? this.§#!7§.target : null;
            }
         }
         §§goto(addr51);
      }
      
      override protected function copyFrom(param1:§^!B§) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && this))
         {
            super.copyFrom(param1);
         }
         var _loc2_:§ T§ = param1 as § T§;
         if(!_loc4_)
         {
            this.§#!7§ = _loc2_.§#!7§.clone() as §36§;
         }
      }
   }
}

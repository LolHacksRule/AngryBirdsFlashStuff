package §;!,§
{
   import §3§.§`A§;
   import §4!7§.§%!m§;
   
   public class §;!p§ extends AbstractTween implements §5!X§
   {
       
      
      protected var §6U§:§`A§;
      
      public function §;!p§(param1:§%!m§)
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            super(param1,0);
         }
      }
      
      public function get §`I§() : §`A§
      {
         return this.§6U§;
      }
      
      public function set §`I§(param1:§`A§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§6U§ = param1;
            if(_loc3_)
            {
               if(this.§6U§ != null)
               {
                  if(_loc3_ || _loc2_)
                  {
                  }
               }
               §§goto(addr50);
            }
            §1J§ = this.§6U§.duration;
         }
         addr50:
      }
      
      override protected function newInstance() : AbstractTween
      {
         return new §;!p§(§5!§);
      }
      
      override protected function internalUpdate(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§6U§.update(param1);
         }
      }
      
      public function get target() : Object
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §§push(this.§6U§);
            if(_loc1_)
            {
               return §§pop() != null ? this.§6U§.target : null;
            }
         }
         §§goto(addr26);
      }
      
      override protected function copyFrom(param1:AbstractTween) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            super.copyFrom(param1);
         }
         var _loc2_:§;!p§ = param1 as §;!p§;
         if(!_loc4_)
         {
            this.§6U§ = _loc2_.§6U§.clone() as §`A§;
         }
      }
   }
}

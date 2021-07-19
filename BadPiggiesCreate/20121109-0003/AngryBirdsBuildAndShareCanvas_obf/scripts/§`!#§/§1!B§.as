package §`!#§
{
   import §%!n§.§;!'§;
   import §0§.§,l§;
   
   public class §1!B§ extends §[!O§ implements §%h§
   {
       
      
      protected var §!f§:§,l§;
      
      public function §1!B§(param1:§;!'§)
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || param1)
         {
            super(param1,0);
         }
      }
      
      public function get §#!!§() : §,l§
      {
         return this.§!f§;
      }
      
      public function set §#!!§(param1:§,l§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§!f§ = param1;
            while(this.§!f§ != null)
            {
               if(_loc3_)
               {
                  if(!_loc2_)
                  {
                     §!"-§ = this.§!f§.duration;
                     addr58:
                     break;
                  }
                  continue;
               }
               §§goto(addr58);
            }
            return;
         }
         §§goto(addr58);
      }
      
      override protected function newInstance() : §[!O§
      {
         return new §1!B§(§`!D§);
      }
      
      override protected function internalUpdate(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc3_)
         {
            this.§!f§.update(param1);
         }
      }
      
      public function get target() : Object
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §§push(this.§!f§);
            if(_loc2_)
            {
               return §§pop() != null ? this.§!f§.target : null;
            }
         }
         §§goto(addr47);
      }
      
      override protected function copyFrom(param1:§[!O§) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || this)
         {
            super.copyFrom(param1);
         }
         var _loc2_:§1!B§ = param1 as §1!B§;
         if(_loc4_)
         {
            this.§!f§ = _loc2_.§!f§.clone() as §,l§;
         }
      }
   }
}

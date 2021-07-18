package §64§
{
   import §;!,§.§#>§;
   import §;!,§.§3!u§;
   import §;!,§.AbstractTween;
   
   public class §@!m§ extends §3!u§
   {
       
      
      private var §=!T§:Number;
      
      private var §6§:Number;
      
      public function §@!m§(param1:§#>§, param2:Number, param3:Number)
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!_loc5_)
         {
            super(param1,0);
            if(_loc4_ || this)
            {
               §§push(§§findproperty(§1J§));
               §§push(param3);
               if(!_loc5_)
               {
                  §§push(§§pop() - param2);
               }
               §§pop().§1J§ = §§pop();
               if(_loc4_)
               {
                  §§goto(addr48);
               }
            }
            §§goto(addr53);
         }
         addr48:
         this.§=!T§ = param2;
         if(_loc4_)
         {
            addr53:
            this.§6§ = param3;
         }
      }
      
      override protected function newInstance() : AbstractTween
      {
         return new §@!m§(§]d§.clone() as §#>§,this.§=!T§,this.§6§);
      }
      
      override protected function internalUpdate(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            §§push(param1);
            if(!_loc2_)
            {
               if(§§pop() > 0)
               {
                  if(_loc3_)
                  {
                     §§goto(addr27);
                  }
                  §§goto(addr46);
               }
               else
               {
                  §]d§.update(this.§=!T§);
               }
               §§goto(addr46);
            }
            addr27:
            if(param1 < §1J§)
            {
               if(!(_loc2_ && _loc3_))
               {
                  §]d§.update(param1 + this.§=!T§);
                  addr46:
                  if(!(_loc2_ && _loc3_))
                  {
                     addr69:
                  }
                  §§goto(addr86);
               }
               §§goto(addr81);
            }
            else
            {
               §]d§.update(this.§6§);
               if(_loc3_ || this)
               {
                  addr81:
               }
               §§goto(addr86);
            }
         }
         §§goto(addr69);
      }
      
      public function get §6_§() : Number
      {
         return this.§=!T§;
      }
      
      public function get end() : Number
      {
         return this.§6§;
      }
   }
}

package §%=§
{
   import §4!7§.§%!m§;
   import §;!,§.§#D§;
   
   public class §`k§ extends §#D§
   {
       
      
      private var §]!`§:Function;
      
      private var §^u§:Array;
      
      private var §=+§:Function;
      
      private var §!b§:Array;
      
      public function §`k§(param1:§%!m§, param2:Function, param3:Array = null, param4:Boolean = false, param5:Function = null, param6:Array = null)
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         super(param1);
         this.§]!`§ = param2;
         this.§^u§ = param3;
         if(param4)
         {
            if(param5 != null)
            {
               this.§=+§ = param5;
               if(_loc7_)
               {
                  this.§!b§ = param6;
                  if(!_loc7_)
                  {
                  }
                  §§goto(addr57);
               }
            }
            else
            {
               this.§=+§ = param2;
               this.§!b§ = param3;
            }
         }
         addr57:
      }
      
      override protected function rollback() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            §§push(this.§=+§);
            if(!(_loc2_ && _loc2_))
            {
               §§push(null);
               if(_loc1_)
               {
                  if(§§pop() != §§pop())
                  {
                     if(_loc1_ || _loc1_)
                     {
                        addr56:
                        this.§=+§.apply(null,this.§!b§);
                     }
                  }
                  return;
               }
            }
         }
         §§goto(addr56);
      }
      
      override protected function action() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || this)
         {
            §§push(this.§]!`§);
            if(_loc2_)
            {
               §§push(null);
               if(!(_loc1_ && _loc2_))
               {
                  if(§§pop() != §§pop())
                  {
                     if(!_loc1_)
                     {
                        addr52:
                        this.§]!`§.apply(null,this.§^u§);
                     }
                  }
                  return;
               }
            }
         }
         §§goto(addr52);
      }
   }
}

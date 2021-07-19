package §%!m§
{
   import §1!k§.§4!J§;
   import §=b§.§%"2§;
   
   public class §2!T§ extends §4!J§
   {
       
      
      private var §;!?§:Function;
      
      private var §^!#§:Array;
      
      private var §2Z§:Function;
      
      private var §&0§:Array;
      
      public function §2!T§(param1:§%"2§, param2:Function, param3:Array = null, param4:Boolean = false, param5:Function = null, param6:Array = null)
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         if(!_loc7_)
         {
            super(param1);
            while(true)
            {
               this.§;!?§ = param2;
               addr121:
               while(true)
               {
                  this.§^!#§ = param3;
               }
            }
            addr125:
         }
         loop2:
         do
         {
            if(param4)
            {
               loop3:
               for(; param5 == null; if(!(_loc7_ && this))
               {
                  continue loop2;
               })
               {
                  this.§2Z§ = param2;
                  while(!(_loc7_ && param3))
                  {
                     if(!(_loc8_ || param2))
                     {
                        this.§&0§ = param6;
                     }
                     else
                     {
                        addr101:
                     }
                     this.§&0§ = param3;
                     if(!(_loc7_ && param2))
                     {
                        if(_loc7_)
                        {
                           break loop3;
                        }
                        continue loop3;
                     }
                  }
                  if(!_loc7_)
                  {
                     break loop2;
                  }
                  §§goto(addr125);
               }
               if(!_loc7_)
               {
                  this.§2Z§ = param5;
                  §§goto(addr101);
               }
               §§goto(addr121);
            }
            break;
         }
         while(_loc7_ && param1);
         
      }
      
      override protected function rollback() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || this)
         {
            §§push(this.§2Z§);
            if(_loc1_)
            {
               §§push(null);
               if(_loc1_)
               {
                  if(§§pop() != §§pop())
                  {
                  }
                  §§goto(addr64);
               }
               §§pop().apply(§§pop(),this.§&0§);
               §§goto(addr64);
            }
            §§goto(addr60);
         }
         addr64:
         if(_loc1_ || _loc2_)
         {
            addr60:
            §§push(this.§2Z§);
            §§push(null);
         }
      }
      
      override protected function action() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §§push(this.§;!?§);
            if(_loc2_)
            {
               §§push(null);
               if(_loc2_)
               {
                  if(§§pop() != §§pop())
                  {
                     if(!(_loc1_ && this))
                     {
                        addr57:
                        this.§;!?§.apply(null,this.§^!#§);
                     }
                  }
                  return;
               }
            }
         }
         §§goto(addr57);
      }
   }
}

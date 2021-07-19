package § w§
{
   import §%!n§.§;!'§;
   import §`!#§.§[!s§;
   
   public class §`@§ extends §[!s§
   {
       
      
      private var §9?§:Function;
      
      private var §,!r§:Array;
      
      private var §@!'§:Function;
      
      private var §6![§:Array;
      
      public function §`@§(param1:§;!'§, param2:Function, param3:Array = null, param4:Boolean = false, param5:Function = null, param6:Array = null)
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         if(_loc8_ || this)
         {
            super(param1);
            loop0:
            while(true)
            {
               this.§9?§ = param2;
               loop1:
               while(true)
               {
                  this.§,!r§ = param3;
                  loop2:
                  while(true)
                  {
                     if(param4)
                     {
                        loop3:
                        do
                        {
                           if(param5 != null)
                           {
                              continue loop1;
                           }
                           this.§@!'§ = param2;
                           while(!_loc7_)
                           {
                              continue loop0;
                              this.§6![§ = param3;
                              if(_loc8_)
                              {
                                 if(_loc8_)
                                 {
                                    addr25:
                                    return;
                                    addr37:
                                 }
                                 continue loop1;
                              }
                           }
                           loop5:
                           while(true)
                           {
                              if(!_loc7_)
                              {
                                 continue loop3;
                              }
                              addr84:
                              while(true)
                              {
                                 if(!_loc8_)
                                 {
                                    break loop5;
                                 }
                                 continue loop5;
                              }
                           }
                           continue loop2;
                        }
                        while(_loc7_);
                        
                     }
                     §§goto(addr25);
                  }
               }
            }
         }
         §§goto(addr37);
      }
      
      override protected function rollback() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            §§push(this.§@!'§);
            if(_loc2_ || _loc1_)
            {
               §§push(null);
               if(!_loc1_)
               {
                  if(§§pop() != §§pop())
                  {
                  }
                  §§goto(addr65);
               }
               §§pop().apply(§§pop(),this.§6![§);
               §§goto(addr65);
            }
            §§goto(addr61);
         }
         addr65:
         if(_loc2_)
         {
            addr61:
            §§push(this.§@!'§);
            §§push(null);
         }
      }
      
      override protected function action() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §§push(this.§9?§);
            if(!_loc1_)
            {
               §§push(null);
               if(!(_loc1_ && this))
               {
                  if(§§pop() != §§pop())
                  {
                     if(_loc2_ || this)
                     {
                        addr62:
                        this.§9?§.apply(null,this.§,!r§);
                     }
                  }
                  return;
               }
            }
         }
         §§goto(addr62);
      }
   }
}

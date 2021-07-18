package §]_§
{
   import §`!#§.§9!0§;
   import §`!#§.§?f§;
   import §`!#§.§[!O§;
   
   public class §%!T§ extends §9!0§
   {
       
      
      private var §`!3§:Number;
      
      private var §5c§:uint;
      
      public function §%!T§(param1:§?f§, param2:uint)
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            super(param1,0);
         }
         loop0:
         while(true)
         {
            this.§`!3§ = param1.duration;
            do
            {
               this.§5c§ = param2;
               continue loop0;
            }
            while(!(_loc4_ || param2));
            
            return;
         }
      }
      
      override protected function internalUpdate(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            §§push(param1);
            if(!(_loc2_ && param1))
            {
               if(§§pop() >= 0)
               {
                  if(_loc3_ || this)
                  {
                     addr48:
                     §§push(param1);
                     if(!(_loc2_ && this))
                     {
                        addr66:
                        §§push(param1);
                        if(!(_loc2_ && param1))
                        {
                           if(§§pop() < §!"-§)
                           {
                              if(_loc3_)
                              {
                                 addr79:
                                 §§push(this.§`!3§);
                                 if(!_loc2_)
                                 {
                                    §§push(§§pop() * int(param1 / this.§`!3§) - (_loc3_ || this ? §§pop() : §§pop()));
                                    if(!(_loc2_ && _loc2_))
                                    {
                                       §§push(Number(§§pop()));
                                    }
                                 }
                                 §§goto(addr97);
                              }
                              param1 = §§pop();
                              while(true)
                              {
                                 §§goto(addr24);
                              }
                              addr124:
                           }
                           else
                           {
                              §§push(§!"-§ - this.§`!3§);
                           }
                           §§goto(addr103);
                        }
                        §§goto(addr97);
                     }
                     §§goto(addr79);
                  }
                  §§goto(addr124);
               }
               addr24:
               while(true)
               {
                  §7"?§.update(param1);
                  if(_loc3_)
                  {
                     break;
                  }
                  continue loop0;
               }
               return;
            }
            §§goto(addr66);
         }
         §§goto(addr48);
      }
      
      public function get §@c§() : uint
      {
         return this.§5c§;
      }
      
      override protected function newInstance() : §[!O§
      {
         return new §%!T§(§7"?§.clone() as §?f§,this.§@c§);
      }
   }
}

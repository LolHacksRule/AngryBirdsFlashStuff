package §6w§
{
   public class SpriteSheetContainer implements §9!%§
   {
       
      
      private var §7!X§:Array;
      
      private var §"!c§:Boolean;
      
      public function SpriteSheetContainer()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && this))
         {
            this.§7!X§ = [];
         }
         do
         {
            super();
         }
         while(_loc2_);
         
      }
      
      public function §[!`§(param1:SpriteSheetBase) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§7!X§.push(param1);
         }
         do
         {
            this.§"!c§ = false;
         }
         while(!(_loc3_ || param1));
         
      }
      
      public function dispose() : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc1_:SpriteSheetBase = null;
         var _loc2_:int = 0;
         for each(_loc1_ in this.§7!X§)
         {
            if(!(_loc5_ && _loc2_))
            {
               _loc1_.dispose();
            }
         }
         if(_loc4_)
         {
            this.§7!X§ = [];
         }
      }
      
      public function §[@§(param1:String) : §<>§
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc2_:§<>§ = null;
         var _loc3_:* = Number(0);
         while(_loc3_ < this.§7!X§.length)
         {
            _loc2_ = (this.§7!X§[_loc3_] as SpriteSheetBase).§[@§(param1);
            if(!(_loc4_ || this))
            {
               continue;
            }
            if(_loc2_ != null)
            {
               if(_loc4_)
               {
                  return _loc2_;
               }
            }
            §§push(_loc3_);
            if(_loc4_)
            {
               §§push(§§pop() + 1);
               if(_loc4_)
               {
                  addr82:
                  §§push(Number(§§pop()));
               }
               _loc3_ = §§pop();
               continue;
            }
            §§goto(addr82);
         }
         return null;
      }
      
      public function get §9q§() : int
      {
         return this.§7!X§.length;
      }
      
      public function §+t§(param1:int) : SpriteSheetBase
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            §§push(param1);
            loop0:
            while(true)
            {
               §§push(0);
               addr134:
               while(true)
               {
                  §§push(§§pop() < §§pop());
                  addr135:
                  loop2:
                  while(true)
                  {
                     §§push(Boolean(§§pop()));
                     loop3:
                     while(true)
                     {
                        §§push(§§pop());
                        if(!(_loc3_ && _loc3_))
                        {
                           §§push(Boolean(§§pop()));
                        }
                        if(§§pop())
                        {
                           loop7:
                           while(true)
                           {
                              loop8:
                              while(!§§pop())
                              {
                                 loop9:
                                 while(true)
                                 {
                                    §§push(this.§"!c§);
                                    if(_loc2_)
                                    {
                                       if(!_loc2_)
                                       {
                                          break;
                                       }
                                       if(!(_loc2_ || this))
                                       {
                                          continue loop3;
                                       }
                                       §§push(!§§pop());
                                    }
                                    if(_loc3_)
                                    {
                                       continue loop8;
                                    }
                                    if(_loc3_)
                                    {
                                       continue loop2;
                                    }
                                    if(§§pop())
                                    {
                                       if(_loc2_ || this)
                                       {
                                          if(_loc2_)
                                          {
                                             §§push(this.§7!X§);
                                             loop10:
                                             while(true)
                                             {
                                                §§pop().sortOn("name");
                                                addr19:
                                                while(true)
                                                {
                                                   §§push(this.§7!X§);
                                                   if(!_loc3_)
                                                   {
                                                      break loop10;
                                                   }
                                                   continue loop10;
                                                }
                                             }
                                             return §§pop()[param1];
                                          }
                                          addr131:
                                          while(true)
                                          {
                                             continue loop9;
                                          }
                                       }
                                       do
                                       {
                                          this.§"!c§ = true;
                                       }
                                       while(_loc3_ && _loc2_);
                                       
                                       if(_loc2_ || this)
                                       {
                                       }
                                       break loop8;
                                    }
                                    §§goto(addr19);
                                 }
                                 while(!(_loc3_ && param1))
                                 {
                                    §§push(Boolean(§§pop()));
                                    continue loop7;
                                 }
                                 while(true)
                                 {
                                    §§pop();
                                    continue loop0;
                                    §§goto(addr107);
                                 }
                                 addr107:
                              }
                              if(!_loc3_)
                              {
                                 break;
                              }
                              continue loop0;
                           }
                           return null;
                        }
                        §§goto(addr146);
                     }
                  }
               }
            }
         }
         §§goto(addr131);
      }
   }
}

package §`u§
{
   public class SpriteSheetContainer implements §@K§
   {
       
      
      private var §=B§:Array;
      
      private var §7!h§:Boolean;
      
      public function SpriteSheetContainer()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && this))
         {
            this.§=B§ = [];
         }
         do
         {
            super();
         }
         while(_loc2_);
         
      }
      
      public function §8!I§(param1:SpriteSheetBase) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§=B§.push(param1);
         }
         do
         {
            this.§7!h§ = false;
         }
         while(!(_loc3_ || this));
         
      }
      
      public function dispose() : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc1_:SpriteSheetBase = null;
         var _loc3_:* = this.§=B§;
         for each(_loc1_ in _loc3_)
         {
            if(_loc4_ || _loc3_)
            {
               _loc1_.dispose();
            }
         }
         if(_loc4_ || this)
         {
            this.§=B§ = [];
         }
      }
      
      public function §?_§(param1:String) : §#!7§
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc2_:§#!7§ = null;
         var _loc3_:* = Number(0);
         while(_loc3_ < this.§=B§.length)
         {
            _loc2_ = (this.§=B§[_loc3_] as SpriteSheetBase).§?_§(param1);
            if(!(_loc5_ || param1))
            {
               continue;
            }
            if(_loc2_ != null)
            {
               if(_loc5_ || _loc3_)
               {
                  return _loc2_;
               }
               continue;
            }
            §§push(_loc3_);
            if(_loc5_ || _loc2_)
            {
               §§push(§§pop() + 1);
               if(!(_loc4_ && this))
               {
                  addr93:
                  §§push(Number(§§pop()));
               }
               _loc3_ = §§pop();
               continue;
            }
            §§goto(addr93);
         }
         return null;
      }
      
      public function get §1t§() : int
      {
         return this.§=B§.length;
      }
      
      public function §6!#§(param1:int) : SpriteSheetBase
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || this)
         {
            §§push(param1);
            loop0:
            while(true)
            {
               §§push(0);
               addr147:
               while(true)
               {
                  §§push(§§pop() < §§pop());
                  if(!(_loc3_ && this))
                  {
                     §§push(Boolean(§§pop()));
                     while(true)
                     {
                        §§push(§§pop());
                        if(_loc2_)
                        {
                           §§push(Boolean(§§pop()));
                        }
                        if(§§pop())
                        {
                           while(true)
                           {
                              if(!§§pop())
                              {
                                 while(true)
                                 {
                                    §§push(this.§7!h§);
                                    if(_loc2_ || this)
                                    {
                                       if(!(_loc2_ || _loc3_))
                                       {
                                          break;
                                       }
                                       §§push(!§§pop());
                                    }
                                    if(§§pop())
                                    {
                                       loop5:
                                       while(true)
                                       {
                                          §§push(this.§=B§);
                                          addr91:
                                          while(true)
                                          {
                                             §§pop().sortOn("name");
                                             loop7:
                                             while(!_loc3_)
                                             {
                                                while(true)
                                                {
                                                   this.§7!h§ = true;
                                                   if(_loc2_ || param1)
                                                   {
                                                      continue loop5;
                                                   }
                                                   continue loop7;
                                                }
                                             }
                                             §§goto(addr140);
                                          }
                                       }
                                    }
                                    §§goto(addr24);
                                 }
                                 while(_loc3_ && _loc3_)
                                 {
                                    while(true)
                                    {
                                       §§pop();
                                       continue loop0;
                                    }
                                 }
                                 continue;
                                 addr114:
                              }
                              addr140:
                              return null;
                           }
                           continue;
                           addr138:
                        }
                     }
                  }
                  §§goto(addr161);
               }
            }
         }
         §§goto(addr96);
      }
   }
}

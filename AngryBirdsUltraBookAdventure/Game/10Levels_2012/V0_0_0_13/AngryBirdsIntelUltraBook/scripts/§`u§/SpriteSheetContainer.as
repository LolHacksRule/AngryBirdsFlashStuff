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
            do
            {
               super();
            }
            while(_loc2_ && this);
            
         }
      }
      
      public function §8!I§(param1:SpriteSheetBase) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc3_))
         {
            this.§=B§.push(param1);
            do
            {
               this.§7!h§ = false;
            }
            while(_loc2_);
            
         }
      }
      
      public function dispose() : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc1_:SpriteSheetBase = null;
         var _loc2_:int = 0;
         for each(_loc1_ in this.§=B§)
         {
            if(!(_loc5_ && _loc2_))
            {
               _loc1_.dispose();
            }
         }
         if(!_loc5_)
         {
            this.§=B§ = [];
         }
      }
      
      public function §?_§(param1:String) : §#!7§
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc2_:§#!7§ = null;
         var _loc3_:* = Number(0);
         while(true)
         {
            if(_loc3_ >= this.§=B§.length)
            {
               return null;
            }
            _loc2_ = (this.§=B§[_loc3_] as SpriteSheetBase).§?_§(param1);
            if(!_loc4_)
            {
               break;
            }
            if(_loc2_ != null)
            {
               if(!_loc5_)
               {
                  break;
               }
            }
            else
            {
               §§push(_loc3_);
               if(_loc4_)
               {
                  §§push(§§pop() + 1);
                  if(!(_loc5_ && _loc2_))
                  {
                     §§push(Number(§§pop()));
                  }
               }
               _loc3_ = §§pop();
            }
         }
         return _loc2_;
      }
      
      public function get §1t§() : int
      {
         return this.§=B§.length;
      }
      
      public function §6!#§(param1:int) : SpriteSheetBase
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
               addr144:
               while(true)
               {
                  §§push(§§pop() < §§pop());
                  addr145:
                  while(true)
                  {
                     §§push(Boolean(§§pop()));
                     while(true)
                     {
                        §§push(§§pop());
                        if(_loc2_ || _loc3_)
                        {
                           §§push(Boolean(§§pop()));
                        }
                        if(§§pop())
                        {
                           while(true)
                           {
                              if(§§pop())
                              {
                                 addr139:
                                 return null;
                              }
                              while(true)
                              {
                                 §§push(this.§7!h§);
                                 if(!(_loc3_ && _loc3_))
                                 {
                                    §§push(!§§pop());
                                 }
                                 if(_loc3_ && _loc2_)
                                 {
                                    break;
                                 }
                                 if(§§pop())
                                 {
                                    if(!(_loc3_ && param1))
                                    {
                                       if(!_loc3_)
                                       {
                                          §§push(this.§=B§);
                                          loop7:
                                          while(true)
                                          {
                                             §§pop().sortOn("name");
                                             addr19:
                                             while(true)
                                             {
                                                §§push(this.§=B§);
                                                if(!(_loc3_ && param1))
                                                {
                                                   break loop7;
                                                }
                                                continue loop7;
                                             }
                                          }
                                          return §§pop()[param1];
                                       }
                                       continue;
                                    }
                                    while(_loc2_)
                                    {
                                       this.§7!h§ = true;
                                       if(!(_loc2_ || this))
                                       {
                                          continue;
                                       }
                                       if(!(_loc2_ || _loc3_))
                                       {
                                          §§goto(addr139);
                                       }
                                    }
                                    continue loop0;
                                 }
                                 §§goto(addr19);
                              }
                           }
                           continue;
                        }
                        while(true)
                        {
                           §§pop();
                           continue loop0;
                        }
                     }
                  }
               }
            }
            addr143:
         }
         while(true)
         {
            §§push(param1);
            if(_loc2_)
            {
               §§push(this.§1t§);
               if(!(_loc3_ && _loc3_))
               {
                  §§push(§§pop() >= §§pop());
                  if(!_loc3_)
                  {
                     if(_loc3_)
                     {
                        continue;
                     }
                     §§push(Boolean(§§pop()));
                  }
                  §§goto(addr128);
               }
               else
               {
                  §§goto(addr144);
               }
            }
            else
            {
               §§goto(addr143);
            }
            §§goto(addr144);
         }
      }
   }
}

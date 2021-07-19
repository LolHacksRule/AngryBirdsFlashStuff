package §7!F§
{
   import §!!U§.DisplayObject;
   
   public class §>"G§
   {
       
      
      private var mName:String;
      
      private var §,!b§:Vector.<§<d§>;
      
      private var §6V§:§7#5§;
      
      private var §4!I§:String;
      
      public function §>"G§(param1:String, param2:§7#5§)
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && param1))
         {
            super();
         }
         while(true)
         {
            this.mName = param1;
            while(_loc3_)
            {
               this.§,!b§ = new Vector.<§<d§>();
               while(!(_loc4_ && param1))
               {
                  this.§6V§ = param2;
                  if(_loc3_ || param2)
                  {
                     return;
                  }
               }
            }
         }
      }
      
      public function get name() : String
      {
         return this.mName;
      }
      
      public function addFrame(param1:String, param2:Number) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!_loc4_)
         {
            §§push(Boolean(isNaN(param2)));
            if(_loc5_ || _loc3_)
            {
               if(!§§pop())
               {
                  if(_loc5_)
                  {
                     addr34:
                     §§pop();
                     if(_loc5_ || param1)
                     {
                        addr42:
                        §§push(param2);
                        if(_loc5_ || param1)
                        {
                           addr52:
                           if(§§pop() <= 0)
                           {
                              addr65:
                              if(_loc5_ || param1)
                              {
                                 §§push(0);
                                 if(_loc5_)
                                 {
                                    §§push(Number(§§pop()));
                                 }
                              }
                              var _loc3_:§8!W§ = this.§6V§.getTexture(param1);
                              if(!_loc4_)
                              {
                                 if(!_loc3_)
                                 {
                                    while(true)
                                    {
                                       if(!§^"U§.§?Z§(param1))
                                       {
                                          return;
                                       }
                                       if(_loc4_ && param2)
                                       {
                                          break;
                                       }
                                       if(!(_loc4_ && this))
                                       {
                                          this.§,!b§.push(new §1"]§(param1,this.§6V§,this.animationLengthMilliSeconds + param2));
                                          break;
                                       }
                                    }
                                    if(_loc5_)
                                    {
                                       if(_loc5_ || this)
                                       {
                                          return;
                                          addr131:
                                       }
                                       else
                                       {
                                          this.§,!b§.push(new §?G§(param1,_loc3_,this.animationLengthMilliSeconds + param2));
                                          addr137:
                                       }
                                    }
                                    return;
                                 }
                                 §§goto(addr137);
                              }
                              §§goto(addr131);
                           }
                           §§goto(addr65);
                        }
                        param2 = §§pop();
                     }
                     §§goto(addr65);
                  }
               }
               §§goto(addr52);
            }
            §§goto(addr34);
         }
         §§goto(addr42);
      }
      
      public function getFrameWithOffset(param1:Number, param2:DisplayObject = null) : DisplayObject
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc3_:int = 0;
         if(_loc6_ || param2)
         {
            §§push(_loc3_);
            if(_loc6_)
            {
               §§push(§§pop() < 0);
               if(_loc6_)
               {
                  if(!§§pop())
                  {
                     if(_loc6_ || _loc3_)
                     {
                        §§goto(addr42);
                     }
                  }
                  §§goto(addr50);
               }
               addr42:
               §§pop();
               if(_loc6_)
               {
                  addr50:
                  addr46:
                  addr45:
                  if(_loc3_ >= this.§,!b§.length)
                  {
                     if(_loc6_)
                     {
                        §§goto(addr53);
                     }
                  }
                  §§push(this.animationLengthMilliSeconds);
                  if(!_loc5_)
                  {
                     §§push(Number(§§pop()));
                  }
                  var _loc4_:*;
                  §§push(_loc4_ = §§pop());
                  if(_loc6_)
                  {
                     §§push(0);
                     if(!_loc5_)
                     {
                        if(§§pop() > §§pop())
                        {
                           if(!_loc5_)
                           {
                              §§push(param1);
                              if(!(_loc5_ && this))
                              {
                                 addr89:
                                 §§push(§§pop() % _loc4_);
                                 if(_loc6_ || param2)
                                 {
                                 }
                                 addr98:
                                 param1 = §§pop();
                                 loop0:
                                 while(true)
                                 {
                                    §§push(this.§,!b§[_loc3_].endTimeMilliSeconds < param1);
                                    if(!(_loc5_ && param1))
                                    {
                                       if(§§pop())
                                       {
                                          loop3:
                                          while(true)
                                          {
                                             §§pop();
                                             addr162:
                                             while(true)
                                             {
                                                §§push(_loc3_ < this.§,!b§.length - 1);
                                                if(_loc6_)
                                                {
                                                   break;
                                                }
                                                continue loop3;
                                             }
                                          }
                                          addr161:
                                       }
                                       while(true)
                                       {
                                          if(§§pop())
                                          {
                                             _loc3_++;
                                          }
                                          if(!(_loc5_ && param2))
                                          {
                                             if(_loc6_ || param1)
                                             {
                                                break loop0;
                                             }
                                             break;
                                          }
                                          §§goto(addr162);
                                       }
                                       continue;
                                    }
                                    §§goto(addr161);
                                 }
                                 return this.§,!b§[_loc3_].updateDisplayObject(param2);
                                 addr99:
                              }
                              §§goto(addr98);
                              §§push(Number(§§pop()));
                           }
                           §§goto(addr99);
                        }
                        §§goto(addr98);
                     }
                  }
                  §§goto(addr89);
               }
               addr53:
               return null;
            }
            §§goto(addr46);
         }
         §§goto(addr45);
      }
      
      public function getFrame(param1:int, param2:DisplayObject = null) : DisplayObject
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && _loc3_))
         {
            §§push(param1);
            if(_loc4_ || param1)
            {
               if(§§pop() >= this.§,!b§.length)
               {
                  loop0:
                  while(true)
                  {
                     §§push(int(this.§,!b§.length - 1));
                     addr137:
                     while(true)
                     {
                        param1 = §§pop();
                        addr138:
                        while(true)
                        {
                        }
                     }
                     addr88:
                     loop4:
                     while(true)
                     {
                        if(_loc4_ || param2)
                        {
                           §§push(param1);
                           if(_loc4_)
                           {
                              addr39:
                              §§push(§§pop() >= this.§,!b§.length);
                              if(!(_loc4_ || param1))
                              {
                                 continue;
                              }
                              while(true)
                              {
                                 if(§§pop())
                                 {
                                    if(_loc4_ || param1)
                                    {
                                       if(!(_loc3_ && this))
                                       {
                                          return null;
                                       }
                                       continue loop4;
                                    }
                                    if(_loc3_ && _loc3_)
                                    {
                                       break;
                                    }
                                 }
                                 return this.§,!b§[param1].updateDisplayObject(param2);
                                 §§goto(addr39);
                              }
                              §§goto(addr138);
                           }
                           break;
                        }
                        continue loop0;
                     }
                     while(!_loc3_)
                     {
                        §§push(§§pop() < 0);
                        if(_loc4_ || param1)
                        {
                           if(!§§pop())
                           {
                              §§goto(addr101);
                           }
                           §§goto(addr50);
                        }
                        §§goto(addr101);
                     }
                     §§goto(addr137);
                  }
               }
               while(true)
               {
                  §§goto(addr88);
                  §§goto(addr138);
               }
            }
            §§goto(addr137);
         }
         §§goto(addr138);
      }
      
      public function getFrameName(param1:int) : String
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || this)
         {
            §§push(param1);
            loop0:
            while(true)
            {
               if(§§pop() >= this.§,!b§.length)
               {
                  while(true)
                  {
                     §§push(int(this.§,!b§.length - 1));
                     addr116:
                     while(true)
                     {
                        param1 = §§pop();
                        addr117:
                        while(true)
                        {
                        }
                     }
                  }
                  addr111:
               }
               while(true)
               {
                  §§push(param1);
                  loop4:
                  while(true)
                  {
                     §§push(§§pop() < 0);
                     if(_loc3_ || _loc3_)
                     {
                        if(!§§pop())
                        {
                           loop7:
                           while(true)
                           {
                              §§pop();
                              loop6:
                              while(true)
                              {
                                 §§push(param1);
                                 if(_loc2_)
                                 {
                                    break;
                                 }
                                 if(!_loc2_)
                                 {
                                    if(_loc3_)
                                    {
                                       §§push(§§pop() >= this.§,!b§.length);
                                       if(!_loc2_)
                                       {
                                          while(§§pop())
                                          {
                                             if(!(_loc2_ && param1))
                                             {
                                                break loop4;
                                             }
                                             if(!(_loc2_ && param1))
                                             {
                                                break;
                                             }
                                             continue loop6;
                                          }
                                          return this.§,!b§[param1].name;
                                          addr48:
                                       }
                                       continue loop7;
                                    }
                                    continue loop0;
                                 }
                                 §§goto(addr116);
                              }
                              continue loop4;
                           }
                           addr94:
                        }
                        §§goto(addr48);
                     }
                     §§goto(addr94);
                  }
                  if(!_loc3_)
                  {
                     continue;
                  }
                  if(!_loc2_)
                  {
                     break;
                  }
                  §§goto(addr111);
               }
               return null;
            }
         }
         §§goto(addr117);
      }
      
      public function get frameCount() : int
      {
         return this.§,!b§.length;
      }
      
      public function get animationLengthMilliSeconds() : Number
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            if(this.§,!b§.length == 0)
            {
               if(_loc1_)
               {
                  §§goto(addr35);
               }
            }
            return this.§,!b§[this.§,!b§.length - 1].endTimeMilliSeconds;
         }
         addr35:
         return 0;
      }
      
      public function get soundName() : String
      {
         return this.§4!I§;
      }
      
      public function getSubAnimation(param1:String) : §>"G§
      {
         return null;
      }
      
      public function hasSubAnimation(param1:String) : Boolean
      {
         return false;
      }
      
      public function get defaultSubAnimationName() : String
      {
         return null;
      }
      
      public function get subAnimationCount() : int
      {
         return 0;
      }
      
      public function getSubAnimationFromIndex(param1:int) : §>"G§
      {
         return null;
      }
      
      public function §&!s§(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§4!I§ = param1;
         }
      }
   }
}

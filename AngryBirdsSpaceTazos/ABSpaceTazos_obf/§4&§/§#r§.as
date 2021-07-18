package §4&§
{
   import §7!8§.DisplayObject;
   
   public class §#r§
   {
       
      
      private var mName:String;
      
      private var §%!u§:Vector.<§else§>;
      
      private var §7!T§:§,C§;
      
      private var §;!7§:String;
      
      public function §#r§(param1:String, param2:§,C§)
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            super();
         }
         do
         {
            this.mName = param1;
            do
            {
               this.§%!u§ = new Vector.<§else§>();
               do
               {
                  this.§7!T§ = param2;
               }
               while(!_loc4_);
               
            }
            while(_loc3_);
            
         }
         while(_loc3_);
         
      }
      
      public function get name() : String
      {
         return this.mName;
      }
      
      public function addFrame(param1:String, param2:Number) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!_loc5_)
         {
            §§push(Boolean(isNaN(param2)));
            if(_loc4_ || _loc3_)
            {
               if(!§§pop())
               {
                  if(!_loc5_)
                  {
                     addr33:
                     §§pop();
                     if(_loc4_ || this)
                     {
                        §§push(param2);
                        if(!(_loc5_ && this))
                        {
                           addr51:
                           if(§§pop() <= 0)
                           {
                              if(!(_loc5_ && _loc3_))
                              {
                                 §§push(0);
                                 if(_loc4_ || param2)
                                 {
                                    addr77:
                                    §§push(Number(§§pop()));
                                 }
                                 param2 = §§pop();
                                 addr79:
                                 var _loc3_:§'!"§ = this.§7!T§.getTexture(param1);
                                 if(_loc4_)
                                 {
                                    if(_loc3_)
                                    {
                                       if(!_loc5_)
                                       {
                                          this.§%!u§.push(new §`"=§(_loc3_,this.animationLengthMilliSeconds + param2));
                                       }
                                    }
                                    else
                                    {
                                       while(true)
                                       {
                                          if(!§ j§.§=!7§(param1))
                                          {
                                             return;
                                          }
                                          if(!_loc4_)
                                          {
                                             break;
                                          }
                                          if(!(_loc5_ && param2))
                                          {
                                             this.§%!u§.push(new §#"2§(param1,this.§7!T§,this.animationLengthMilliSeconds + param2));
                                             break;
                                          }
                                       }
                                       if(_loc4_)
                                       {
                                          return;
                                          addr123:
                                       }
                                    }
                                    return;
                                 }
                                 §§goto(addr123);
                              }
                           }
                           §§goto(addr79);
                        }
                        §§goto(addr77);
                     }
                     §§goto(addr79);
                  }
               }
               §§goto(addr51);
            }
            §§goto(addr33);
         }
         §§goto(addr79);
      }
      
      public function getFrameWithOffset(param1:Number, param2:DisplayObject = null) : DisplayObject
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc3_:int = 0;
         if(_loc5_ || this)
         {
            §§push(_loc3_);
            if(_loc5_)
            {
               §§push(§§pop() < 0);
               if(!_loc6_)
               {
                  if(!§§pop())
                  {
                     if(!_loc6_)
                     {
                        §§pop();
                        if(!_loc6_)
                        {
                           addr44:
                           if(_loc3_ >= this.§%!u§.length)
                           {
                              if(!(_loc6_ && _loc3_))
                              {
                                 §§goto(addr52);
                              }
                           }
                        }
                        §§push(this.animationLengthMilliSeconds);
                        if(_loc5_)
                        {
                           §§push(Number(§§pop()));
                        }
                        var _loc4_:*;
                        if((_loc4_ = §§pop()) > 0)
                        {
                           do
                           {
                              §§push(this.§%!u§[_loc3_].endTimeMilliSeconds < param1 % _loc4_);
                              if(!(_loc6_ && param2))
                              {
                                 if(§§pop())
                                 {
                                    if(_loc5_)
                                    {
                                       §§pop();
                                       if(!(_loc6_ && param1))
                                       {
                                          §§push(_loc3_ < this.§%!u§.length - 1);
                                       }
                                       break;
                                    }
                                 }
                              }
                              if(!§§pop())
                              {
                                 break;
                              }
                              _loc3_++;
                           }
                           while(!(_loc6_ && this));
                           
                        }
                        return this.§%!u§[_loc3_].updateDisplayObject(param2);
                     }
                  }
               }
            }
            §§goto(addr44);
         }
         addr52:
         return null;
      }
      
      public function getFrame(param1:int, param2:DisplayObject = null) : DisplayObject
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && param2))
         {
            §§push(param1);
            loop0:
            while(true)
            {
               if(§§pop() >= this.§%!u§.length)
               {
                  addr127:
                  while(true)
                  {
                     §§push(int(this.§%!u§.length - 1));
                     addr132:
                     while(true)
                     {
                        param1 = §§pop();
                        addr133:
                        while(true)
                        {
                        }
                     }
                  }
                  addr127:
               }
               loop1:
               while(true)
               {
                  §§push(param1);
                  loop2:
                  while(!(_loc3_ && param2))
                  {
                     §§push(§§pop() < 0);
                     while(true)
                     {
                        if(§§pop())
                        {
                           while(§§pop())
                           {
                              if(_loc3_)
                              {
                                 break;
                              }
                              if(!(_loc3_ && param2))
                              {
                                 return null;
                              }
                              addr102:
                              while(!(_loc3_ && param1))
                              {
                                 if(_loc4_)
                                 {
                                    §§push(param1);
                                    if(!(_loc3_ && _loc3_))
                                    {
                                       continue loop0;
                                    }
                                    continue loop2;
                                 }
                                 §§goto(addr127);
                              }
                              continue loop1;
                           }
                           return this.§%!u§[param1].updateDisplayObject(param2);
                           addr74:
                        }
                        while(true)
                        {
                           §§pop();
                        }
                        §§goto(addr102);
                     }
                  }
                  §§goto(addr132);
               }
            }
         }
         §§goto(addr127);
      }
      
      public function get frameCount() : int
      {
         return this.§%!u§.length;
      }
      
      public function get animationLengthMilliSeconds() : Number
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            if(this.§%!u§.length == 0)
            {
               if(!(_loc1_ && _loc2_))
               {
                  §§goto(addr46);
               }
            }
            return this.§%!u§[this.§%!u§.length - 1].endTimeMilliSeconds;
         }
         addr46:
         return 0;
      }
      
      public function get soundName() : String
      {
         return this.§;!7§;
      }
      
      public function getSubAnimation(param1:String) : §#r§
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
      
      public function getSubAnimationFromIndex(param1:int) : §#r§
      {
         return null;
      }
      
      public function §-!6§(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§;!7§ = param1;
         }
      }
   }
}

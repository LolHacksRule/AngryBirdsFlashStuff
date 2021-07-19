package §2`§
{
   import §3!J§.DisplayObject;
   
   public class §;!Q§
   {
       
      
      private var mName:String;
      
      private var §8!'§:Vector.<§=!"§>;
      
      private var §,%§:§%!!§;
      
      private var §`!A§:String;
      
      public function §;!Q§(param1:String, param2:§%!!§)
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            super();
            loop0:
            do
            {
               this.mName = param1;
               while(true)
               {
                  this.§8!'§ = new Vector.<§=!"§>();
                  while(!(_loc3_ && _loc3_))
                  {
                     this.§,%§ = param2;
                     if(!_loc3_)
                     {
                        continue loop0;
                     }
                  }
               }
            }
            while(_loc3_ && this);
            
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
         if(_loc5_ || param1)
         {
            §§push(Boolean(isNaN(param2)));
            if(!(_loc4_ && param1))
            {
               if(!§§pop())
               {
                  if(_loc5_ || _loc3_)
                  {
                     §§pop();
                     if(!_loc4_)
                     {
                        §§push(param2);
                        if(_loc5_ || this)
                        {
                           addr57:
                           if(§§pop() <= 0)
                           {
                              addr85:
                              if(_loc5_ || _loc3_)
                              {
                                 addr65:
                                 §§push(0);
                                 if(_loc5_ || param1)
                                 {
                                    §§push(Number(§§pop()));
                                 }
                              }
                              var _loc3_:§5E§ = this.§,%§.§5!X§(param1);
                              if(_loc5_)
                              {
                                 if(!_loc3_)
                                 {
                                    while(true)
                                    {
                                       if(!§6y§.§'!L§(param1))
                                       {
                                          return;
                                       }
                                       if(_loc4_ && param1)
                                       {
                                          break;
                                       }
                                       if(_loc5_ || param2)
                                       {
                                          this.§8!'§.push(new §5]§(param1,this.§,%§,this.animationLengthMilliSeconds + param2));
                                          break;
                                       }
                                       if(_loc4_)
                                       {
                                          return;
                                       }
                                       addr162:
                                    }
                                    return;
                                 }
                                 if(!_loc4_)
                                 {
                                    this.§8!'§.push(new § R§(_loc3_,this.animationLengthMilliSeconds + param2));
                                    addr142:
                                 }
                                 §§goto(addr162);
                              }
                              §§goto(addr142);
                           }
                           §§goto(addr85);
                        }
                        param2 = §§pop();
                     }
                     §§goto(addr85);
                  }
               }
            }
            §§goto(addr57);
         }
         §§goto(addr65);
      }
      
      public function getFrameWithOffset(param1:Number, param2:DisplayObject = null) : DisplayObject
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc3_:int = 0;
         if(_loc6_ || param2)
         {
            §§push(_loc3_);
            if(_loc6_ || param1)
            {
               §§push(§§pop() < 0);
               if(_loc6_)
               {
                  if(!§§pop())
                  {
                     if(_loc6_)
                     {
                        §§goto(addr42);
                     }
                  }
                  §§goto(addr65);
               }
               addr42:
               §§pop();
               if(_loc6_ || param2)
               {
                  addr65:
                  addr51:
                  addr50:
                  if(_loc3_ >= this.§8!'§.length)
                  {
                     if(_loc6_)
                     {
                        §§goto(addr68);
                     }
                  }
                  §§push(this.animationLengthMilliSeconds);
                  if(!_loc5_)
                  {
                     §§push(Number(§§pop()));
                  }
                  var _loc4_:*;
                  if((_loc4_ = §§pop()) > 0)
                  {
                     while(true)
                     {
                        §§push(this.§8!'§[_loc3_].endTimeMilliSeconds < param1 % _loc4_);
                        if(!_loc5_)
                        {
                           if(§§pop())
                           {
                              if(_loc6_)
                              {
                                 addr99:
                                 §§pop();
                                 if(!_loc5_)
                                 {
                                    while(true)
                                    {
                                       §§push(_loc3_ < this.§8!'§.length - 1);
                                    }
                                    addr102:
                                 }
                                 §§goto(addr119);
                              }
                           }
                           while(true)
                           {
                              if(!§§pop())
                              {
                                 addr119:
                              }
                              _loc3_++;
                              if(!_loc5_)
                              {
                                 break;
                              }
                              continue;
                              return this.§8!'§[_loc3_].updateDisplayObject(param2);
                           }
                           continue;
                        }
                        §§goto(addr99);
                     }
                  }
                  §§goto(addr99);
               }
               addr68:
               return null;
            }
            §§goto(addr51);
         }
         §§goto(addr50);
      }
      
      public function getFrame(param1:int, param2:DisplayObject = null) : DisplayObject
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && param1))
         {
            §§push(param1);
            loop0:
            while(true)
            {
               if(§§pop() >= this.§8!'§.length)
               {
                  while(true)
                  {
                     §§push(int(this.§8!'§.length - 1));
                     addr132:
                     while(true)
                     {
                        param1 = §§pop();
                        addr133:
                        while(true)
                        {
                        }
                     }
                     addr73:
                     if(!(_loc3_ && param2))
                     {
                        §§goto(addr25);
                     }
                  }
               }
               loop4:
               while(true)
               {
                  §§push(param1);
                  loop5:
                  while(_loc4_)
                  {
                     continue loop0;
                     addr111:
                     §§push(param1);
                     if(!(_loc4_ || param1))
                     {
                        continue;
                     }
                     §§push(§§pop() >= this.§8!'§.length);
                     if(_loc4_)
                     {
                        while(true)
                        {
                           if(§§pop())
                           {
                              if(_loc4_ || this)
                              {
                                 break;
                              }
                              if(!_loc4_)
                              {
                                 loop7:
                                 while(true)
                                 {
                                    if(_loc3_ && _loc3_)
                                    {
                                       continue loop4;
                                    }
                                    §§goto(addr111);
                                    addr103:
                                    while(true)
                                    {
                                       §§pop();
                                       continue loop7;
                                    }
                                 }
                                 continue loop5;
                              }
                              §§goto(addr73);
                           }
                           addr25:
                           return this.§8!'§[param1].updateDisplayObject(param2);
                        }
                        addr69:
                        return null;
                        addr50:
                     }
                     §§goto(addr103);
                  }
                  §§goto(addr132);
               }
            }
         }
         §§goto(addr69);
      }
      
      public function get frameCount() : int
      {
         return this.§8!'§.length;
      }
      
      public function get animationLengthMilliSeconds() : Number
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            if(this.§8!'§.length == 0)
            {
               if(!(_loc1_ && _loc1_))
               {
                  §§goto(addr46);
               }
            }
            return this.§8!'§[this.§8!'§.length - 1].endTimeMilliSeconds;
         }
         addr46:
         return 0;
      }
      
      public function get §@!Y§() : String
      {
         return this.§`!A§;
      }
      
      public function getSubAnimation(param1:String) : §;!Q§
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
      
      public function getSubAnimationFromIndex(param1:int) : §;!Q§
      {
         return null;
      }
      
      public function §!m§(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc2_))
         {
            this.§`!A§ = param1;
         }
      }
   }
}

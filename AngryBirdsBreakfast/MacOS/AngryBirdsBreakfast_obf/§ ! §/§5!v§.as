package § ! §
{
   import §6![§.DisplayObject;
   
   public class §5!v§
   {
       
      
      private var mName:String;
      
      private var §!z§:Vector.<§?n§>;
      
      private var §`8§:§5!x§;
      
      private var §;!T§:String;
      
      public function §5!v§(param1:String, param2:§5!x§)
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || this)
         {
            super();
         }
         loop0:
         do
         {
            this.mName = param1;
            while(true)
            {
               this.§!z§ = new Vector.<§?n§>();
               while(_loc3_)
               {
                  this.§`8§ = param2;
                  if(!_loc4_)
                  {
                     continue loop0;
                  }
               }
            }
         }
         while(_loc4_);
         
      }
      
      public function get name() : String
      {
         return this.mName;
      }
      
      public function addFrame(param1:String, param2:Number) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_ || param2)
         {
            §§push(Boolean(isNaN(param2)));
            if(_loc4_ || this)
            {
               if(!§§pop())
               {
                  if(_loc4_ || _loc3_)
                  {
                     addr43:
                     §§pop();
                     if(_loc4_ || param2)
                     {
                        addr51:
                        §§push(param2);
                        if(!(_loc5_ && param1))
                        {
                           addr61:
                           if(§§pop() <= 0)
                           {
                              if(_loc4_)
                              {
                                 addr64:
                                 §§push(0);
                                 if(!_loc5_)
                                 {
                                    addr67:
                                    §§push(Number(§§pop()));
                                 }
                                 param2 = §§pop();
                              }
                           }
                           var _loc3_:§8-§ = this.§`8§.§`I§(param1);
                           if(!(_loc5_ && param2))
                           {
                              if(!_loc3_)
                              {
                                 while(true)
                                 {
                                    if(§+D§.§3,§(param1))
                                    {
                                       if(!(_loc5_ && this))
                                       {
                                          if(_loc4_ || _loc3_)
                                          {
                                             addr119:
                                             this.§!z§.push(new §+!Y§(param1,this.§`8§,this.animationLengthMilliSeconds + param2));
                                             break;
                                          }
                                          if(!_loc5_)
                                          {
                                             if(!_loc5_)
                                             {
                                                continue;
                                             }
                                             addr141:
                                             this.§!z§.push(new §`![§(_loc3_,this.animationLengthMilliSeconds + param2));
                                          }
                                          return;
                                       }
                                       break;
                                    }
                                    return;
                                 }
                                 return;
                              }
                              §§goto(addr141);
                           }
                           §§goto(addr119);
                        }
                        §§goto(addr67);
                     }
                     §§goto(addr64);
                  }
               }
               §§goto(addr61);
            }
            §§goto(addr43);
         }
         §§goto(addr51);
      }
      
      public function getFrameWithOffset(param1:Number, param2:DisplayObject = null) : DisplayObject
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc3_:int = 0;
         if(!_loc5_)
         {
            §§push(_loc3_);
            if(!(_loc5_ && param2))
            {
               §§push(§§pop() < 0);
               if(_loc6_ || param2)
               {
                  if(!§§pop())
                  {
                     if(_loc6_)
                     {
                        addr42:
                        §§pop();
                        if(_loc6_)
                        {
                           §§goto(addr50);
                        }
                        §§goto(addr68);
                     }
                  }
                  addr50:
                  §§goto(addr46);
               }
               §§goto(addr42);
            }
            addr46:
            §§goto(addr45);
         }
         addr45:
         if(_loc3_ >= this.§!z§.length)
         {
            if(_loc6_ || param2)
            {
               addr68:
               return null;
            }
         }
         §§push(this.animationLengthMilliSeconds);
         if(_loc6_)
         {
            §§push(Number(§§pop()));
         }
         var _loc4_:*;
         if((_loc4_ = §§pop()) > 0)
         {
            do
            {
               §§push(this.§!z§[_loc3_].endTimeMilliSeconds < param1 % _loc4_);
               if(!_loc5_)
               {
                  if(§§pop())
                  {
                     if(_loc6_)
                     {
                        §§pop();
                        if(_loc6_ || _loc3_)
                        {
                           §§push(_loc3_ < this.§!z§.length - 1);
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
            while(_loc6_ || this);
            
         }
         return this.§!z§[_loc3_].updateDisplayObject(param2);
      }
      
      public function getFrame(param1:int, param2:DisplayObject = null) : DisplayObject
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            §§push(param1);
            loop0:
            while(true)
            {
               if(§§pop() >= this.§!z§.length)
               {
                  if(!_loc3_)
                  {
                     §§push(int(this.§!z§.length - 1));
                     while(true)
                     {
                        param1 = §§pop();
                        addr118:
                        while(true)
                        {
                        }
                        addr34:
                        if(_loc3_ && this)
                        {
                           continue;
                        }
                        if(_loc3_)
                        {
                           continue loop0;
                        }
                        §§push(§§pop() >= this.§!z§.length);
                        if(!_loc3_)
                        {
                           if(!(_loc3_ && param1))
                           {
                              loop7:
                              while(§§pop())
                              {
                                 if(!(_loc3_ && _loc3_))
                                 {
                                    if(_loc4_)
                                    {
                                       return null;
                                    }
                                    loop6:
                                    while(true)
                                    {
                                       §§push(param1);
                                       if(_loc4_)
                                       {
                                          §§goto(addr34);
                                       }
                                       else
                                       {
                                          while(true)
                                          {
                                             §§push(§§pop() < 0);
                                             addr91:
                                             while(true)
                                             {
                                                if(§§pop())
                                                {
                                                   continue loop7;
                                                }
                                                while(true)
                                                {
                                                   §§pop();
                                                   continue loop6;
                                                }
                                             }
                                          }
                                          addr89:
                                       }
                                       §§goto(addr91);
                                    }
                                 }
                                 else if(_loc4_ || this)
                                 {
                                    break;
                                 }
                                 §§goto(addr118);
                              }
                              return this.§!z§[param1].updateDisplayObject(param2);
                           }
                           §§goto(addr91);
                        }
                        §§goto(addr93);
                     }
                  }
                  §§goto(addr118);
               }
               while(true)
               {
                  §§goto(addr89);
               }
            }
         }
         §§goto(addr118);
      }
      
      public function get frameCount() : int
      {
         return this.§!z§.length;
      }
      
      public function get animationLengthMilliSeconds() : Number
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            if(this.§!z§.length == 0)
            {
               if(!_loc1_)
               {
                  §§goto(addr41);
               }
            }
            return this.§!z§[this.§!z§.length - 1].endTimeMilliSeconds;
         }
         addr41:
         return 0;
      }
      
      public function get §'!K§() : String
      {
         return this.§;!T§;
      }
      
      public function getSubAnimation(param1:String) : §5!v§
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
      
      public function getSubAnimationFromIndex(param1:int) : §5!v§
      {
         return null;
      }
      
      public function §6!&§(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc3_))
         {
            this.§;!T§ = param1;
         }
      }
   }
}

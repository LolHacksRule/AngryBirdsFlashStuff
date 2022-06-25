package §1!E§
{
   import §>7§.§4+§;
   import flash.display.MovieClip;
   
   public class §1!=§ extends §4+§
   {
      
      private static const §=%§:Number = 16.666666666666668;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §=%§ = 1000 / 60;
         }
      }
      
      private var §3!k§:String;
      
      private var §!D§:String;
      
      private var §9X§:int = 0;
      
      private var §6^§:int = 0;
      
      private var §!!a§:Number = 0;
      
      private var §6l§:Boolean = false;
      
      public function §1!=§(param1:XML, param2:§#?§, param3:MovieClip = null)
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!_loc4_)
         {
            super(param1,param2,param3);
         }
      }
      
      override public function listenerEventOccured(param1:int, param2:String) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || _loc3_)
         {
            super.listenerEventOccured(param1,param2);
         }
      }
      
      public function §@!5§(param1:Number) : String
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:* = null;
         if(!_loc5_)
         {
            §§push(this);
            §§push(this.§!!a§);
            if(!(_loc5_ && param1))
            {
               §§push(§§pop() + param1);
            }
            §§pop().§!!a§ = §§pop();
            if(_loc6_ || _loc2_)
            {
               addr42:
               §§push(this);
               §§push(this.§!!a§);
               if(!_loc5_)
               {
                  §§push(§§pop() / §=%§);
               }
               §§pop().§6^§ = §§pop();
            }
            loop0:
            while(true)
            {
               if(this.§9X§ < this.§6^§)
               {
                  var _loc3_:*;
                  §§push((_loc3_ = this).§9X§);
                  if(!(_loc5_ && this))
                  {
                     §§push(§§pop() + 1);
                  }
                  var _loc4_:* = §§pop();
                  if(_loc6_ || param1)
                  {
                     _loc3_.§9X§ = _loc4_;
                  }
                  if(_loc6_ || this)
                  {
                     mClip.gotoAndStop(this.§9X§);
                     this.§3!k§ = mClip.currentLabel;
                     loop1:
                     do
                     {
                        §§push(this.§3!k§);
                        addr194:
                        while(true)
                        {
                           if(§§pop() == this.§!D§)
                           {
                              break loop1;
                           }
                           while(true)
                           {
                              §§push(this.§3!k§);
                              if(_loc6_ || this)
                              {
                                 §§push(§§pop());
                              }
                              addr207:
                              while(true)
                              {
                                 _loc2_ = §§pop();
                                 addr208:
                                 loop3:
                                 while(true)
                                 {
                                    this.§6^§ = this.§9X§;
                                    addr190:
                                    while(true)
                                    {
                                       this.§!!a§ = this.§6^§ * §=%§;
                                       continue loop3;
                                    }
                                 }
                                 continue loop1;
                              }
                           }
                        }
                     }
                     while(_loc5_ && param1);
                     
                     continue;
                     addr219:
                     addr214:
                  }
                  else
                  {
                     loop4:
                     while(true)
                     {
                        this.§9X§ = this.§6^§;
                        while(_loc6_)
                        {
                           this.§!D§ = this.§3!k§;
                           if(_loc5_ && this)
                           {
                              continue;
                           }
                           if(_loc5_)
                           {
                              continue loop4;
                           }
                           if(_loc6_ || param1)
                           {
                              if(!_loc5_)
                              {
                                 if(_loc6_ || this)
                                 {
                                    §§push(_loc2_);
                                    if(_loc6_)
                                    {
                                       if(!(_loc5_ && _loc3_))
                                       {
                                          break loop0;
                                       }
                                       §§goto(addr194);
                                    }
                                    §§goto(addr207);
                                 }
                                 else
                                 {
                                    §§goto(addr219);
                                 }
                              }
                              §§goto(addr190);
                           }
                           while(true)
                           {
                              if(!(_loc5_ && _loc3_))
                              {
                                 §§goto(addr167);
                              }
                              §§goto(addr208);
                           }
                        }
                        §§goto(addr197);
                     }
                     addr146:
                  }
                  §§goto(addr160);
               }
               §§goto(addr146);
            }
            return §§pop();
         }
         §§goto(addr42);
      }
      
      public function §!8§(param1:int) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            mClip.gotoAndStop(param1);
         }
      }
      
      public function §&!%§(param1:int) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc2_))
         {
            mClip.gotoAndPlay(param1);
         }
      }
      
      public function §!!F§(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc3_))
         {
            mClip.gotoAndPlay(param1);
         }
      }
      
      public function §&!3§(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            mClip.gotoAndStop(param1);
            while(true)
            {
               this.§3!k§ = param1;
               addr67:
               if(!(_loc2_ || _loc3_))
               {
                  continue;
               }
               this.§!!a§ = mClip.currentFrame * §=%§;
               addr74:
               if(!(_loc3_ && _loc2_))
               {
                  if(!_loc2_)
                  {
                     loop3:
                     while(!_loc3_)
                     {
                        this.§9X§ = mClip.currentFrame;
                        while(!_loc3_)
                        {
                           §§goto(addr67);
                           §§goto(addr74);
                        }
                        while(true)
                        {
                           this.§!D§ = param1;
                           break loop3;
                        }
                     }
                     while(true)
                     {
                        this.§6^§ = mClip.currentFrame;
                        §§goto(addr80);
                     }
                     addr80:
                  }
                  return;
               }
               §§goto(addr65);
            }
         }
         §§goto(addr92);
      }
      
      public function §%U§() : String
      {
         return mClip.currentLabel;
      }
      
      public function §2!^§() : int
      {
         return mClip.currentFrame;
      }
      
      public function get §;,§() : Boolean
      {
         return this.§6l§;
      }
      
      public function set §;,§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || param1)
         {
            this.§6l§ = param1;
         }
      }
   }
}

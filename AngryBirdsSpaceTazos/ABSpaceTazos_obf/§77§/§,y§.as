package §77§
{
   import §5X§.§@!!§;
   import §<W§.§]"+§;
   import flash.display.MovieClip;
   
   public class §,y§ extends §@!!§
   {
      
      private static const §,!5§:Number = 16.666666666666668;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §,!5§ = 1000 / 60;
         }
      }
      
      private var §`"5§:String;
      
      private var §-Y§:String;
      
      private var §5!8§:int = 0;
      
      private var §3!,§:int = 0;
      
      private var §2!]§:Number = 0;
      
      private var §9,§:Boolean = false;
      
      public function §,y§(param1:XML, param2:§ ",§, param3:MovieClip = null)
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!_loc4_)
         {
            super(param1,param2,param3);
         }
      }
      
      override public function listenerUIEventOccured(param1:int, param2:String) : §]"+§
      {
         return super.listenerUIEventOccured(param1,param2);
      }
      
      public function §-X§(param1:Number) : String
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:* = null;
         if(_loc5_ || _loc2_)
         {
            §§push(this);
            §§push(this.§2!]§);
            if(_loc5_)
            {
               §§push(§§pop() + param1);
            }
            §§pop().§2!]§ = §§pop();
            if(_loc5_ || _loc3_)
            {
               addr41:
               §§push(this);
               §§push(this.§2!]§);
               if(_loc5_ || _loc3_)
               {
                  §§push(§§pop() / §,!5§);
               }
               §§pop().§3!,§ = §§pop();
            }
            loop0:
            while(true)
            {
               if(this.§5!8§ >= this.§3!,§)
               {
                  if(!(_loc6_ && this))
                  {
                     if(!(_loc6_ && this))
                     {
                        this.§5!8§ = this.§3!,§;
                        loop3:
                        while(!(_loc6_ && _loc2_))
                        {
                           this.§-Y§ = this.§`"5§;
                           if(!_loc5_)
                           {
                              continue;
                           }
                           if(_loc5_ || this)
                           {
                              if(_loc5_)
                              {
                                 §§push(_loc2_);
                                 if(!(_loc6_ && param1))
                                 {
                                    if(_loc5_ || _loc2_)
                                    {
                                       break loop0;
                                    }
                                    loop1:
                                    while(true)
                                    {
                                       §§push(§§pop());
                                       addr193:
                                       while(true)
                                       {
                                          continue loop1;
                                       }
                                    }
                                    addr178:
                                    continue loop0;
                                    addr195:
                                 }
                                 while(true)
                                 {
                                    _loc2_ = §§pop();
                                    addr197:
                                    while(true)
                                    {
                                       this.§3!,§ = this.§5!8§;
                                       addr184:
                                       while(true)
                                       {
                                          this.§2!]§ = this.§3!,§ * §,!5§;
                                          break loop3;
                                       }
                                       break loop3;
                                    }
                                    addr171:
                                    if(!(_loc5_ || this))
                                    {
                                       §§goto(addr193);
                                    }
                                    §§goto(addr178);
                                 }
                              }
                              else
                              {
                                 this.§`"5§ = mClip.currentLabel;
                                 §§push(this.§`"5§);
                                 if(_loc5_)
                                 {
                                    if(§§pop() == this.§-Y§)
                                    {
                                       continue loop0;
                                    }
                                    §§goto(addr193);
                                 }
                                 addr213:
                                 addr218:
                              }
                              §§goto(addr195);
                           }
                           §§goto(addr184);
                        }
                        while(true)
                        {
                           if(!(_loc6_ && param1))
                           {
                              §§goto(addr171);
                           }
                           §§goto(addr197);
                        }
                        addr149:
                     }
                     §§goto(addr213);
                  }
                  §§goto(addr149);
               }
               else
               {
                  var _loc3_:*;
                  §§push((_loc3_ = this).§5!8§);
                  if(!_loc6_)
                  {
                     §§push(§§pop() + 1);
                  }
                  var _loc4_:* = §§pop();
                  if(_loc5_)
                  {
                     _loc3_.§5!8§ = _loc4_;
                  }
                  if(!(_loc6_ && _loc3_))
                  {
                     mClip.gotoAndStop(this.§5!8§);
                     §§goto(addr218);
                  }
               }
               §§goto(addr193);
            }
            return §§pop();
         }
         §§goto(addr41);
      }
      
      public function §="7§(param1:int) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc2_))
         {
            mClip.gotoAndStop(param1);
         }
      }
      
      public function §&!A§(param1:int) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            mClip.gotoAndPlay(param1);
         }
      }
      
      public function §]0§(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            mClip.gotoAndPlay(param1);
         }
      }
      
      public function §[!0§(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || param1)
         {
            mClip.gotoAndStop(param1);
            while(true)
            {
               this.§`"5§ = param1;
            }
            addr112:
         }
         loop1:
         while(true)
         {
            this.§-Y§ = param1;
            loop2:
            while(true)
            {
               this.§3!,§ = mClip.currentFrame;
               while(true)
               {
                  if(_loc3_ || param1)
                  {
                     continue loop1;
                  }
                  continue loop2;
                  addr61:
                  while(!(_loc2_ && _loc2_))
                  {
                     this.§2!]§ = mClip.currentFrame * §,!5§;
                     if(_loc2_ && this)
                     {
                        continue;
                     }
                     if(!_loc2_)
                     {
                        break loop1;
                     }
                     §§goto(addr112);
                  }
               }
               continue loop1;
            }
         }
      }
      
      public function §<"D§() : String
      {
         return mClip.currentLabel;
      }
      
      public function § !I§() : int
      {
         return mClip.currentFrame;
      }
      
      public function get §9"%§() : Boolean
      {
         return this.§9,§;
      }
      
      public function set §9"%§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && this))
         {
            this.§9,§ = param1;
         }
      }
   }
}

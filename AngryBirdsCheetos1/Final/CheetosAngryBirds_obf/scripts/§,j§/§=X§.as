package §,j§
{
   import §1§.§&!3§;
   import flash.display.MovieClip;
   
   public class §=X§ extends §&!3§
   {
      
      private static const §#y§:Number = 16.666666666666668;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §#y§ = 1000 / 60;
         }
      }
      
      private var §03§:String;
      
      private var §-!W§:String;
      
      private var §[#§:int = 0;
      
      private var §#M§:int = 0;
      
      private var §4!3§:Number = 0;
      
      private var §;!T§:Boolean = false;
      
      public function §=X§(param1:XML, param2:§1-§, param3:MovieClip = null)
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
         if(!_loc3_)
         {
            super.listenerEventOccured(param1,param2);
         }
      }
      
      public function §<&§(param1:Number) : String
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:* = null;
         if(_loc6_)
         {
            §§push(this);
            §§push(this.§4!3§);
            if(_loc6_ || _loc2_)
            {
               §§push(§§pop() + param1);
            }
            §§pop().§4!3§ = §§pop();
            if(!(_loc5_ && this))
            {
               addr42:
               §§push(this);
               §§push(this.§4!3§);
               if(_loc6_)
               {
                  §§push(§§pop() / §#y§);
               }
               §§pop().§#M§ = §§pop();
            }
            loop0:
            while(true)
            {
               if(this.§[#§ < this.§#M§)
               {
                  var _loc3_:*;
                  §§push((_loc3_ = this).§[#§);
                  if(_loc6_)
                  {
                     §§push(§§pop() + 1);
                  }
                  var _loc4_:* = §§pop();
                  if(!(_loc5_ && _loc3_))
                  {
                     _loc3_.§[#§ = _loc4_;
                  }
                  if(_loc6_ || this)
                  {
                     mClip.gotoAndStop(this.§[#§);
                     while(true)
                     {
                        this.§03§ = mClip.currentLabel;
                        addr194:
                        while(true)
                        {
                           §§push(this.§03§);
                           addr164:
                           while(true)
                           {
                              if(§§pop() == this.§-!W§)
                              {
                                 continue loop0;
                              }
                              while(true)
                              {
                                 §§push(this.§03§);
                                 addr169:
                                 while(true)
                                 {
                                    §§push(§§pop());
                                    addr170:
                                    while(true)
                                    {
                                       _loc2_ = §§pop();
                                    }
                                 }
                              }
                           }
                        }
                     }
                     addr199:
                  }
                  else
                  {
                     loop1:
                     while(true)
                     {
                        this.§[#§ = this.§#M§;
                        loop2:
                        while(!_loc5_)
                        {
                           if(_loc6_ || _loc3_)
                           {
                              this.§-!W§ = this.§03§;
                              if(!_loc6_)
                              {
                                 continue;
                              }
                              if(!_loc6_)
                              {
                                 continue loop1;
                              }
                              §§push(_loc2_);
                              if(_loc6_ || _loc2_)
                              {
                                 if(_loc6_)
                                 {
                                    if(!_loc5_)
                                    {
                                       break loop0;
                                    }
                                    §§goto(addr164);
                                 }
                                 §§goto(addr169);
                              }
                              §§goto(addr170);
                           }
                           while(true)
                           {
                              if(!(_loc5_ && _loc3_))
                              {
                                 this.§#M§ = this.§[#§;
                                 break loop2;
                              }
                              §§goto(addr194);
                              §§goto(addr170);
                           }
                           continue loop0;
                        }
                        while(true)
                        {
                           if(!_loc5_)
                           {
                              this.§4!3§ = this.§#M§ * §#y§;
                              while(true)
                              {
                                 if(!_loc5_)
                                 {
                                    continue loop0;
                                 }
                                 §§goto(addr199);
                              }
                              addr150:
                           }
                           §§goto(addr167);
                        }
                     }
                  }
                  §§goto(addr171);
               }
               §§goto(addr122);
            }
            return §§pop();
         }
         §§goto(addr42);
      }
      
      public function §5c§(param1:int) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            mClip.gotoAndStop(param1);
         }
      }
      
      public function §'!%§(param1:int) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            mClip.gotoAndPlay(param1);
         }
      }
      
      public function §1!X§(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc3_))
         {
            mClip.gotoAndPlay(param1);
         }
      }
      
      public function §=5§(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc2_))
         {
            mClip.gotoAndStop(param1);
            while(true)
            {
               this.§03§ = param1;
               loop1:
               do
               {
                  this.§-!W§ = param1;
                  loop2:
                  while(true)
                  {
                     this.§#M§ = mClip.currentFrame;
                     do
                     {
                        this.§[#§ = mClip.currentFrame;
                        continue loop2;
                     }
                     while(!(_loc3_ || param1));
                     
                     continue loop1;
                  }
               }
               while(!_loc3_);
               
            }
         }
      }
      
      public function §[V§() : String
      {
         return mClip.currentLabel;
      }
      
      public function §;]§() : int
      {
         return mClip.currentFrame;
      }
      
      public function get §#I§() : Boolean
      {
         return this.§;!T§;
      }
      
      public function set §#I§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§;!T§ = param1;
         }
      }
   }
}

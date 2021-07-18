package §+D§
{
   import §;"Y§.§1"z§;
   import §<w§.§6#'§;
   import flash.display.MovieClip;
   
   public class §0"$§ extends §1"z§
   {
      
      private static const §5f§:Number = 16.666666666666668;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §5f§ = 1000 / 60;
         }
      }
      
      private var §-,§:String;
      
      private var §=!&§:String;
      
      private var §3O§:int = 0;
      
      private var §?"l§:int = 0;
      
      private var §7#Q§:Number = 0;
      
      private var §+j§:Boolean = false;
      
      public function §0"$§(param1:XML, param2:§ #^§, param3:MovieClip = null)
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_)
         {
            super(param1,param2,param3);
         }
      }
      
      override public function listenerUIEventOccured(param1:int, param2:String) : §6#'§
      {
         return super.listenerUIEventOccured(param1,param2);
      }
      
      public function §<U§(param1:Number) : String
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:* = null;
         if(_loc6_)
         {
            §§push(this);
            §§push(this.§7#Q§);
            if(_loc6_)
            {
               §§push(§§pop() + param1);
            }
            §§pop().§7#Q§ = §§pop();
            if(_loc6_ || this)
            {
               §§push(this);
               §§push(this.§7#Q§);
               if(_loc6_ || _loc3_)
               {
                  §§push(§§pop() / §5f§);
               }
               §§pop().§?"l§ = §§pop();
            }
         }
         loop0:
         while(true)
         {
            if(this.§3O§ >= this.§?"l§)
            {
               if(_loc6_ || this)
               {
                  this.§3O§ = this.§?"l§;
               }
               loop4:
               while(!_loc5_)
               {
                  if(!(_loc5_ && _loc2_))
                  {
                     continue;
                  }
                  addr172:
                  loop5:
                  while(true)
                  {
                     §§push(this.§-,§);
                     addr174:
                     loop6:
                     while(true)
                     {
                        §§push(§§pop());
                        addr175:
                        while(true)
                        {
                           _loc2_ = §§pop();
                           loop2:
                           while(true)
                           {
                              if(_loc6_)
                              {
                                 this.§?"l§ = this.§3O§;
                                 break loop4;
                              }
                              break;
                              addr150:
                              while(true)
                              {
                                 if(!(_loc5_ && this))
                                 {
                                    continue loop0;
                                 }
                                 continue loop2;
                              }
                           }
                           addr194:
                           while(true)
                           {
                              §§push(this.§-,§);
                              if(_loc6_)
                              {
                                 if(§§pop() == this.§=!&§)
                                 {
                                    break;
                                 }
                                 continue loop5;
                              }
                              continue loop6;
                           }
                           continue loop0;
                        }
                     }
                  }
               }
               while(true)
               {
                  this.§7#Q§ = this.§?"l§ * §5f§;
                  §§goto(addr150);
               }
               addr133:
               addr163:
            }
            else
            {
               var _loc3_:*;
               §§push((_loc3_ = this).§3O§);
               if(!_loc5_)
               {
                  §§push(§§pop() + 1);
               }
               var _loc4_:* = §§pop();
               if(_loc6_)
               {
                  _loc3_.§3O§ = _loc4_;
               }
               if(!(_loc5_ && _loc2_))
               {
                  mClip.gotoAndStop(this.§3O§);
                  this.§-,§ = mClip.currentLabel;
                  §§goto(addr194);
                  addr199:
               }
               else
               {
                  while(true)
                  {
                     this.§=!&§ = this.§-,§;
                     if(_loc6_ || _loc2_)
                     {
                        if(_loc6_ || this)
                        {
                           if(!_loc5_)
                           {
                              §§push(_loc2_);
                              if(_loc6_)
                              {
                                 if(_loc6_)
                                 {
                                    break loop0;
                                 }
                                 §§goto(addr174);
                              }
                              §§goto(addr175);
                           }
                           else
                           {
                              §§goto(addr199);
                           }
                        }
                        §§goto(addr150);
                     }
                     else
                     {
                        §§goto(addr133);
                     }
                  }
                  addr142:
               }
               §§goto(addr172);
            }
            §§goto(addr142);
         }
         return §§pop();
      }
      
      public function §0#6§(param1:int) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || this)
         {
            mClip.gotoAndStop(param1);
         }
      }
      
      public function §1!L§(param1:int) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            mClip.gotoAndPlay(param1);
         }
      }
      
      public function §&">§(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc3_))
         {
            mClip.gotoAndPlay(param1);
         }
      }
      
      public function §-"I§(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || this)
         {
            mClip.gotoAndStop(param1);
            loop0:
            while(true)
            {
               this.§-,§ = param1;
               loop1:
               while(true)
               {
                  this.§=!&§ = param1;
                  while(true)
                  {
                     this.§?"l§ = mClip.currentFrame;
                     continue loop1;
                     addr60:
                     while(!(_loc3_ && _loc2_))
                     {
                        continue loop0;
                        this.§7#Q§ = mClip.currentFrame * §5f§;
                        if(!(_loc3_ && this))
                        {
                           if(_loc2_)
                           {
                              return;
                              addr44:
                           }
                           continue loop1;
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr44);
      }
      
      public function §'_§() : String
      {
         return mClip.currentLabel;
      }
      
      public function §%E§() : int
      {
         return mClip.currentFrame;
      }
      
      public function get §<"M§() : Boolean
      {
         return this.§+j§;
      }
      
      public function set §<"M§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && this))
         {
            this.§+j§ = param1;
         }
      }
   }
}

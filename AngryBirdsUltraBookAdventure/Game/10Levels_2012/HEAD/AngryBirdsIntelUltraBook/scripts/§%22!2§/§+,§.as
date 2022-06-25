package §"!2§
{
   import §>!<§.UIComponentInteractiveRovio;
   import flash.display.MovieClip;
   
   public class §+,§ extends UIComponentInteractiveRovio
   {
      
      private static const §[!7§:Number = 16.666666666666668;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §[!7§ = 1000 / 60;
         }
      }
      
      private var §!&§:String;
      
      private var §!!2§:String;
      
      private var §8=§:int = 0;
      
      private var §%!A§:int = 0;
      
      private var §@!f§:Number = 0;
      
      private var §0!"§:Boolean = false;
      
      public function §+,§(param1:XML, param2:UIContainerRovio, param3:MovieClip = null)
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
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            super.listenerEventOccured(param1,param2);
         }
      }
      
      public function §0!]§(param1:Number) : String
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:* = null;
         if(_loc5_ || param1)
         {
            §§push(this);
            §§push(this.§@!f§);
            if(_loc5_ || _loc3_)
            {
               §§push(§§pop() + param1);
            }
            §§pop().§@!f§ = §§pop();
            if(_loc5_)
            {
               §§push(this);
               §§push(this.§@!f§);
               if(!(_loc6_ && param1))
               {
                  §§push(§§pop() / §[!7§);
               }
               §§pop().§%!A§ = §§pop();
            }
         }
         loop0:
         while(true)
         {
            if(this.§8=§ >= this.§%!A§)
            {
               loop2:
               while(true)
               {
                  this.§8=§ = this.§%!A§;
                  loop3:
                  while(_loc5_)
                  {
                     this.§!!2§ = this.§!&§;
                     if(!(_loc5_ || _loc2_))
                     {
                        continue;
                     }
                     if(_loc6_)
                     {
                        continue loop2;
                     }
                     if(_loc5_ || this)
                     {
                        §§push(_loc2_);
                        if(!_loc6_)
                        {
                           if(_loc5_ || param1)
                           {
                              break loop0;
                           }
                           loop4:
                           while(true)
                           {
                              §§push(§§pop());
                              addr200:
                              while(true)
                              {
                                 continue loop4;
                              }
                           }
                           addr202:
                        }
                        while(true)
                        {
                           _loc2_ = §§pop();
                           loop6:
                           while(true)
                           {
                              this.§%!A§ = this.§8=§;
                              addr169:
                              addr218:
                              loop7:
                              while(_loc5_ || _loc3_)
                              {
                                 this.§@!f§ = this.§%!A§ * §[!7§;
                                 while(true)
                                 {
                                    if(!(_loc5_ || _loc2_))
                                    {
                                       continue loop7;
                                    }
                                    if(_loc6_)
                                    {
                                       continue loop6;
                                    }
                                    if(!_loc6_)
                                    {
                                       break;
                                    }
                                    §§goto(addr200);
                                 }
                                 continue loop0;
                              }
                              while(true)
                              {
                                 this.§!&§ = mClip.currentLabel;
                                 break loop3;
                                 §§goto(addr169);
                              }
                           }
                           §§goto(addr202);
                        }
                        addr203:
                     }
                     §§goto(addr152);
                  }
               }
            }
            else
            {
               var _loc3_:*;
               §§push((_loc3_ = this).§8=§);
               if(_loc5_)
               {
                  §§push(§§pop() + 1);
               }
               var _loc4_:* = §§pop();
               if(!(_loc6_ && _loc2_))
               {
                  _loc3_.§8=§ = _loc4_;
               }
               if(_loc5_ || this)
               {
                  mClip.gotoAndStop(this.§8=§);
                  §§goto(addr218);
               }
            }
            while(true)
            {
               §§push(this.§!&§);
               if(_loc5_ || _loc3_)
               {
                  if(§§pop() == this.§!!2§)
                  {
                     break;
                  }
                  §§goto(addr200);
               }
               §§goto(addr203);
            }
         }
         return §§pop();
      }
      
      public function §[!?§(param1:int) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            mClip.gotoAndStop(param1);
         }
      }
      
      public function §-!R§(param1:int) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc3_)
         {
            mClip.gotoAndPlay(param1);
         }
      }
      
      public function §;#§(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            mClip.gotoAndPlay(param1);
         }
      }
      
      public function §"r§(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc2_)
         {
            mClip.gotoAndStop(param1);
            while(true)
            {
               this.§!&§ = param1;
               loop1:
               while(true)
               {
                  this.§!!2§ = param1;
                  do
                  {
                     this.§%!A§ = mClip.currentFrame;
                     continue loop1;
                  }
                  while(!_loc2_);
                  
               }
               while(!(_loc3_ && this))
               {
                  this.§@!f§ = mClip.currentFrame * §[!7§;
                  if(!(_loc2_ || _loc3_))
                  {
                     continue;
                  }
                  if(!_loc3_)
                  {
                     §§goto(addr56);
                  }
                  §§goto(addr89);
               }
            }
         }
      }
      
      public function §8!-§() : String
      {
         return mClip.currentLabel;
      }
      
      public function §1!c§() : int
      {
         return mClip.currentFrame;
      }
      
      public function get §9X§() : Boolean
      {
         return this.§0!"§;
      }
      
      public function set §9X§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§0!"§ = param1;
         }
      }
   }
}

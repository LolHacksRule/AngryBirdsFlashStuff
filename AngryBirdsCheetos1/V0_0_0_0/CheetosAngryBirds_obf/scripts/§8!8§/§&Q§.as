package §8!8§
{
   import §@R§.§<d§;
   import flash.display.MovieClip;
   
   public class §&Q§ extends §<d§
   {
      
      private static const §#m§:Number = 16.666666666666668;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            §#m§ = 1000 / 60;
         }
      }
      
      private var §7+§:String;
      
      private var §-!O§:String;
      
      private var §#!E§:int = 0;
      
      private var §;d§:int = 0;
      
      private var §;2§:Number = 0;
      
      private var §4C§:Boolean = false;
      
      public function §&Q§(param1:XML, param2:§4!C§, param3:MovieClip = null)
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!(_loc4_ && param3))
         {
            super(param1,param2,param3);
         }
      }
      
      override public function listenerEventOccured(param1:int, param2:String) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || param2)
         {
            super.listenerEventOccured(param1,param2);
         }
      }
      
      public function §[!9§(param1:Number) : String
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:String = null;
         if(!(_loc6_ && _loc2_))
         {
            §§push(this);
            §§push(this.§;2§);
            if(_loc5_ || param1)
            {
               §§push(§§pop() + param1);
            }
            §§pop().§;2§ = §§pop();
            if(_loc5_)
            {
               §§push(this);
               §§push(this.§;2§);
               if(!(_loc6_ && this))
               {
                  §§push(§§pop() / §#m§);
               }
               §§pop().§;d§ = §§pop();
            }
         }
         loop0:
         while(true)
         {
            if(this.§#!E§ < this.§;d§)
            {
               var _loc3_:*;
               §§push((_loc3_ = this).§#!E§);
               if(!(_loc6_ && this))
               {
                  §§push(§§pop() + 1);
               }
               var _loc4_:* = §§pop();
               if(!_loc6_)
               {
                  _loc3_.§#!E§ = _loc4_;
               }
               if(_loc5_ || _loc3_)
               {
                  mClip.gotoAndStop(this.§#!E§);
                  this.§7+§ = mClip.currentLabel;
                  §§push(this.§7+§);
                  if(!(_loc6_ && _loc2_))
                  {
                     if(§§pop() == this.§-!O§)
                     {
                        continue;
                     }
                     addr178:
                     §§push(this.§7+§);
                  }
                  addr181:
                  _loc2_ = §§pop();
                  addr180:
                  loop2:
                  while(true)
                  {
                     this.§;d§ = this.§#!E§;
                     addr162:
                     while(true)
                     {
                        if(!_loc6_)
                        {
                           break loop2;
                        }
                        continue loop2;
                     }
                  }
                  this.§;2§ = this.§;d§ * §#m§;
                  addr203:
                  addr198:
               }
               else
               {
                  loop1:
                  while(true)
                  {
                     this.§-!O§ = this.§7+§;
                     if(!_loc6_)
                     {
                        if(!(_loc6_ && _loc2_))
                        {
                           §§push(_loc2_);
                           if(!_loc6_)
                           {
                              if(!_loc6_)
                              {
                                 break loop0;
                              }
                              §§goto(addr180);
                           }
                           §§goto(addr181);
                        }
                        else
                        {
                           while(true)
                           {
                              this.§#!E§ = this.§;d§;
                              addr128:
                              while(!_loc6_)
                              {
                                 if(!(_loc6_ && param1))
                                 {
                                    if(!(_loc6_ && this))
                                    {
                                       if(_loc5_)
                                       {
                                          if(_loc5_)
                                          {
                                             continue loop1;
                                          }
                                          §§goto(addr203);
                                       }
                                       §§goto(addr198);
                                    }
                                    §§goto(addr178);
                                 }
                              }
                              break loop1;
                           }
                           addr124:
                        }
                        §§goto(addr162);
                     }
                     §§goto(addr128);
                  }
               }
               continue;
            }
            §§goto(addr124);
         }
         return §§pop();
      }
      
      public function §6y§(param1:int) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            mClip.gotoAndStop(param1);
         }
      }
      
      public function §'#§(param1:int) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc3_)
         {
            mClip.gotoAndPlay(param1);
         }
      }
      
      public function §4t§(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            mClip.gotoAndPlay(param1);
         }
      }
      
      public function §7!-§(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            mClip.gotoAndStop(param1);
            while(true)
            {
               this.§7+§ = param1;
               while(true)
               {
                  this.§-!O§ = param1;
                  loop2:
                  while(!(_loc2_ && _loc2_))
                  {
                     while(true)
                     {
                        this.§;d§ = mClip.currentFrame;
                        loop4:
                        while(true)
                        {
                           this.§#!E§ = mClip.currentFrame;
                           while(true)
                           {
                              if(!(_loc2_ && param1))
                              {
                                 if(_loc2_)
                                 {
                                    break;
                                 }
                                 continue;
                              }
                              continue loop4;
                           }
                           continue loop2;
                        }
                     }
                     return;
                  }
               }
            }
         }
         §§goto(addr88);
      }
      
      public function §`w§() : String
      {
         return mClip.currentLabel;
      }
      
      public function §"!N§() : int
      {
         return mClip.currentFrame;
      }
      
      public function get §9y§() : Boolean
      {
         return this.§4C§;
      }
      
      public function set §9y§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§4C§ = param1;
         }
      }
   }
}

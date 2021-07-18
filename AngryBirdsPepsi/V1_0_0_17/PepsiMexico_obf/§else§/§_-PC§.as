package §else§
{
   import §_-6r§.§_-7P§;
   import §_-PD§.HighscoreSidebar;
   import §_-Ur§.§_-BN§;
   import §_-Ur§.§_-ru§;
   import §_-hU§.§_-MB§;
   import §_-y7§.§_-VA§;
   import §_-zL§.§_-5B§;
   import flash.events.HTTPStatusEvent;
   import flash.events.IOErrorEvent;
   import flash.net.URLLoader;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   import flash.net.URLRequestMethod;
   
   public class §_-PC§ extends §_-iL§
   {
      
      public static const §_-Az§:String = "ForgotPasswordState";
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §_-Az§ = "ForgotPasswordState";
         }
      }
      
      public function §_-PC§(param1:Boolean, param2:String = "ForgotPasswordState")
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || param2)
         {
            super(param1,param2);
         }
      }
      
      override public function activate() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            super.activate();
            if(!_loc2_)
            {
               §_-MB§.§_-A7§.§_-Gf§(false);
               if(_loc2_)
               {
               }
               §§goto(addr49);
            }
            §_-NY§.setText("","TextField_UserNameField");
            if(!_loc2_)
            {
               §_-1S§.changeState(HighscoreSidebar.§_-x1§);
            }
         }
         addr49:
      }
      
      override public function init() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            super.init();
            if(_loc1_)
            {
               §_-NY§ = new §_-ru§(this);
               if(!_loc2_)
               {
                  addr40:
                  §_-NY§.init(§_-BN§.native.Views.View_ForgotPassword[0]);
               }
               return;
            }
         }
         §§goto(addr40);
      }
      
      override public function run(param1:Number) : int
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:int = super.run(param1);
         if(!_loc4_)
         {
            §§push(_loc2_);
            if(_loc3_ || param1)
            {
               if(§§pop() != §_-VA§.STATE_STATUS_RUNNING)
               {
                  if(_loc3_)
                  {
                     §§push(_loc2_);
                  }
                  else
                  {
                     §§goto(addr60);
                  }
               }
               else
               {
                  if(mNextState.length > 0)
                  {
                     if(!_loc4_)
                     {
                        return §_-VA§.STATE_STATUS_COMPLETED;
                     }
                     §§goto(addr60);
                  }
                  §§goto(addr60);
               }
               §§goto(addr60);
            }
            return §§pop();
         }
         addr60:
         return §_-VA§.STATE_STATUS_RUNNING;
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§_-7P§) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc4_:* = param2;
         if(!(_loc6_ && param1))
         {
            if("SEND_PASSWORD" === _loc4_)
            {
               if(_loc5_)
               {
                  addr56:
                  §§push(0);
                  if(_loc6_)
                  {
                  }
               }
               else
               {
                  addr63:
                  §§push(1);
                  if(_loc6_ && this)
                  {
                  }
               }
               §§goto(addr83);
            }
            else
            {
               if("CANCEL" === _loc4_)
               {
                  §§goto(addr63);
               }
               else
               {
                  §§push(2);
               }
               addr83:
               switch(§§pop())
               {
                  case 0:
                     this.§_-kU§();
                     if(_loc5_ || this)
                     {
                        break;
                     }
                     addr32:
                     break;
                  case 1:
                     mNextState = §_-mk§.§_-Az§;
                     if(_loc5_)
                     {
                        §§goto(addr32);
                     }
               }
               return;
            }
            §§goto(addr63);
         }
         §§goto(addr56);
      }
      
      private function §_-kU§() : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc1_:String = §_-NY§.getText("TextField_UserNameField");
         if(_loc5_)
         {
            if(_loc1_.length == 0)
            {
               if(_loc5_)
               {
                  this.§_-4j§(§_-5B§.§_-X8§.EMAIL_MISSING);
                  if(_loc6_ && _loc3_)
                  {
                     addr39:
                     var _loc2_:RegExp = /^\S+@\S+\.\S+$/;
                     if(!(_loc6_ && _loc3_))
                     {
                        if(!_loc2_.test(_loc1_))
                        {
                           if(!(_loc6_ && _loc1_))
                           {
                              addr62:
                              this.§_-4j§(§_-5B§.§_-X8§.EMAIL_INVALID);
                              if(_loc6_ && _loc1_)
                              {
                                 addr82:
                                 var _loc3_:URLLoader = new URLLoader();
                                 var _loc4_:URLRequest;
                                 (_loc4_ = new URLRequest()).method = URLRequestMethod.POST;
                                 if(!(_loc6_ && this))
                                 {
                                    _loc3_.dataFormat = URLLoaderDataFormat.TEXT;
                                    if(!_loc6_)
                                    {
                                       _loc4_.data = "email=" + _loc1_;
                                       if(!(_loc6_ && _loc1_))
                                       {
                                          addr119:
                                          _loc3_.addEventListener(HTTPStatusEvent.HTTP_STATUS,this.§_-wL§);
                                          _loc3_.addEventListener(IOErrorEvent.IO_ERROR,this.§_-qT§);
                                          _loc4_.url = §_-Qu§.§_-p2§;
                                          if(_loc5_)
                                          {
                                             _loc3_.load(_loc4_);
                                             addr147:
                                             mNextState = §_-mk§.§_-Az§;
                                          }
                                       }
                                       return;
                                    }
                                    §§goto(addr119);
                                 }
                                 §§goto(addr147);
                              }
                           }
                           return;
                        }
                        §§goto(addr82);
                     }
                     §§goto(addr62);
                  }
               }
               return;
            }
         }
         §§goto(addr39);
      }
      
      private function §_-wL§(param1:HTTPStatusEvent) : void
      {
      }
      
      private function §_-qT§(param1:IOErrorEvent) : void
      {
      }
      
      private function §_-4j§(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            §_-1S§.showHelpText("Error:\n" + param1);
         }
      }
   }
}

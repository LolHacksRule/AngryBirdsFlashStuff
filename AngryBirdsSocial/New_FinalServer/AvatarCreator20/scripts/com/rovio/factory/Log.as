package com.rovio.factory
{
   import flash.display.DisplayObjectContainer;
   import flash.display.Graphics;
   import flash.display.Sprite;
   import flash.events.KeyboardEvent;
   import flash.text.TextField;
   import flash.ui.Keyboard;
   
   public class Log
   {
      
      public static const LOGGER_ENABLED:Boolean = true;
      
      public static const CONSOLE_OUTPUT_ENABLED:Boolean = true;
      
      public static const LOGGER_CHANNEL_CRITICAL:int = 0;
      
      public static const LOGGER_CHANNEL_STANDARD:int = 1;
      
      public static const LOG_BUFFER_LENGTH:int = 500;
      
      private static var mLoggedData:Array = null;
      
      private static var mRowIndex:Number = 0;
      
      public static var LOGGER_KEY_TOGGLE:int = Keyboard.F1;
      
      public static var LOGGER_KEY_NEXT_CHANNEL:int = Keyboard.F3;
      
      public static var LOGGER_KEY_PREVIOUS_CHANNEL:int = Keyboard.F2;
      
      public static var LOGGER_KEY_TOGGLE_INPUT:int = Keyboard.F4;
      
      public static var mLoggerPanelInputEnabled:Boolean = false;
      
      public static var mLogPanelContainer:Sprite = null;
      
      private static var mLogTextField:TextField = null;
      
      private static var mInputEnabledTextField:TextField = null;
      
      private static var mChannelTextField:TextField = null;
      
      public static var currentChannel:int = -1;
       
      
      public function Log()
      {
         super();
      }
      
      public static function init() : void
      {
         if(!LOGGER_ENABLED)
         {
            return;
         }
         mLoggedData = new Array(LOG_BUFFER_LENGTH);
      }
      
      public static function log(param1:Object, param2:int = 1) : void
      {
         var _loc3_:Number = NaN;
         if(LOGGER_ENABLED)
         {
            _loc3_ = mRowIndex++ % LOG_BUFFER_LENGTH;
            mLoggedData[_loc3_] = [param1,param2];
            if(param2 == currentChannel || currentChannel < 0)
            {
               updateLog();
            }
         }
         if(CONSOLE_OUTPUT_ENABLED)
         {
            if(param1)
            {
               trace(param1.toString());
            }
            else
            {
               trace("null");
            }
         }
      }
      
      private static function updateLog() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:String = null;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         if(!LOGGER_ENABLED)
         {
            return;
         }
         if(mLogPanelContainer && mLogPanelContainer.visible)
         {
            if(currentChannel < 0)
            {
               mChannelTextField.text = "Current channel: ALL";
            }
            else
            {
               mChannelTextField.text = "Current channel: " + currentChannel;
            }
            _loc1_ = true;
            if(mLogTextField.scrollV != mLogTextField.numLines - int(mLogTextField.height / (mLogTextField.textHeight / mLogTextField.numLines)))
            {
               _loc1_ = false;
            }
            _loc2_ = "";
            _loc3_ = 0;
            while(_loc3_ < LOG_BUFFER_LENGTH)
            {
               _loc4_ = (mRowIndex + _loc3_ + 1) % 500;
               if(mLoggedData[_loc4_] != null)
               {
                  if(currentChannel < 0 || mLoggedData[_loc4_][1] == currentChannel)
                  {
                     _loc2_ += mLoggedData[_loc4_][0] + "\n";
                  }
               }
               _loc3_++;
            }
            mLogTextField.text = _loc2_;
            if(_loc1_)
            {
               mLogTextField.scrollV = mLogTextField.numLines;
            }
         }
      }
      
      public static function setDisplayContainer(param1:DisplayObjectContainer, param2:int = 40, param3:int = 40, param4:int = 500, param5:int = 300, param6:int = -1) : void
      {
         if(!LOGGER_ENABLED)
         {
            return;
         }
         mLogPanelContainer = new Sprite();
         mLogPanelContainer.visible = false;
         param1.addChild(mLogPanelContainer);
         var _loc7_:Graphics;
         (_loc7_ = mLogPanelContainer.graphics).beginFill(16777215,0);
         _loc7_.drawRect(0,0,1000,1000);
         _loc7_.endFill();
         _loc7_.beginFill(16777215,0.4);
         _loc7_.drawRect(param2,param3,param4,param5);
         _loc7_.endFill();
         mLogTextField = new TextField();
         mLogTextField.width = param4;
         mLogTextField.height = param5 - 20;
         mLogTextField.x = param2;
         mLogTextField.y = param3 + 20;
         mLogTextField.wordWrap = true;
         mLogPanelContainer.addChild(mLogTextField);
         mInputEnabledTextField = new TextField();
         mInputEnabledTextField.x = param2 + param4 / 2;
         mInputEnabledTextField.y = param3;
         mInputEnabledTextField.width = param4 / 2;
         mInputEnabledTextField.height = 20;
         mInputEnabledTextField.text = "LOGGER CAPTURING INPUT, F4";
         mInputEnabledTextField.border = true;
         mInputEnabledTextField.borderColor = 16711680;
         mLogPanelContainer.addChild(mInputEnabledTextField);
         mChannelTextField = new TextField();
         mChannelTextField.width = param4;
         mChannelTextField.height = 20;
         mChannelTextField.x = param2;
         mChannelTextField.y = param3;
         mLogPanelContainer.addChild(mChannelTextField);
         setInputEnabled(mLoggerPanelInputEnabled);
         if(param6 >= 0)
         {
            param1.addChildAt(mLogPanelContainer,param6);
         }
         else
         {
            param1.addChild(mLogPanelContainer);
         }
      }
      
      public static function setInputEnabled(param1:Boolean) : void
      {
         if(!LOGGER_ENABLED)
         {
            return;
         }
         mLoggerPanelInputEnabled = param1;
         mLogPanelContainer.mouseChildren = mLoggerPanelInputEnabled;
         mLogPanelContainer.mouseEnabled = mLoggerPanelInputEnabled;
         mChannelTextField.mouseEnabled = mLoggerPanelInputEnabled;
         mLogTextField.mouseEnabled = mLoggerPanelInputEnabled;
         mInputEnabledTextField.visible = mLoggerPanelInputEnabled;
      }
      
      public static function keyDown(param1:KeyboardEvent) : void
      {
         if(!LOGGER_ENABLED)
         {
            return;
         }
         if(param1.keyCode == LOGGER_KEY_TOGGLE)
         {
            mLogPanelContainer.visible = !mLogPanelContainer.visible;
            if(mLogPanelContainer.visible)
            {
               updateLog();
            }
            else
            {
               mLogTextField.text = "";
            }
         }
         else if(param1.keyCode == LOGGER_KEY_PREVIOUS_CHANNEL)
         {
            --currentChannel;
            if(currentChannel < -1)
            {
               currentChannel = -1;
            }
            updateLog();
         }
         else if(param1.keyCode == LOGGER_KEY_NEXT_CHANNEL)
         {
            ++currentChannel;
            updateLog();
         }
         else if(param1.keyCode == LOGGER_KEY_TOGGLE_INPUT)
         {
            setInputEnabled(!mLoggerPanelInputEnabled);
         }
      }
      
      public static function setKeys(param1:int = 113.0, param2:int = 115.0, param3:int = 114.0, param4:int = 117.0) : void
      {
         LOGGER_KEY_TOGGLE = param1;
         LOGGER_KEY_PREVIOUS_CHANNEL = param2;
         LOGGER_KEY_NEXT_CHANNEL = param3;
      }
   }
}

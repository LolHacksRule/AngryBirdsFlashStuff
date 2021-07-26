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
      
      public static function log(str:Object, channel:int = 1) : void
      {
         var row:Number = NaN;
         if(LOGGER_ENABLED)
         {
            row = mRowIndex++ % LOG_BUFFER_LENGTH;
            mLoggedData[row] = [str,channel];
            if(channel == currentChannel || currentChannel < 0)
            {
               updateLog();
            }
         }
         if(CONSOLE_OUTPUT_ENABLED)
         {
            if(str)
            {
               trace(str.toString());
            }
            else
            {
               trace("null");
            }
         }
      }
      
      private static function updateLog() : void
      {
         var autoscroll:Boolean = false;
         var text:String = null;
         var i:Number = NaN;
         var row:Number = NaN;
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
            autoscroll = true;
            if(mLogTextField.scrollV != mLogTextField.numLines - int(mLogTextField.height / (mLogTextField.textHeight / mLogTextField.numLines)))
            {
               autoscroll = false;
            }
            text = "";
            for(i = 0; i < LOG_BUFFER_LENGTH; i++)
            {
               row = (mRowIndex + i + 1) % 500;
               if(mLoggedData[row] != null)
               {
                  if(currentChannel < 0 || mLoggedData[row][1] == currentChannel)
                  {
                     text += mLoggedData[row][0] + "\n";
                  }
               }
            }
            mLogTextField.text = text;
            if(autoscroll)
            {
               mLogTextField.scrollV = mLogTextField.numLines;
            }
         }
      }
      
      public static function setDisplayContainer(container:DisplayObjectContainer, x:int = 40, y:int = 40, width:int = 500, height:int = 300, childIndex:int = -1) : void
      {
         if(!LOGGER_ENABLED)
         {
            return;
         }
         mLogPanelContainer = new Sprite();
         mLogPanelContainer.visible = false;
         container.addChild(mLogPanelContainer);
         var g:Graphics = mLogPanelContainer.graphics;
         g.beginFill(16777215,0);
         g.drawRect(0,0,1000,1000);
         g.endFill();
         g.beginFill(16777215,0.4);
         g.drawRect(x,y,width,height);
         g.endFill();
         mLogTextField = new TextField();
         mLogTextField.width = width;
         mLogTextField.height = height - 20;
         mLogTextField.x = x;
         mLogTextField.y = y + 20;
         mLogTextField.wordWrap = true;
         mLogPanelContainer.addChild(mLogTextField);
         mInputEnabledTextField = new TextField();
         mInputEnabledTextField.x = x + width / 2;
         mInputEnabledTextField.y = y;
         mInputEnabledTextField.width = width / 2;
         mInputEnabledTextField.height = 20;
         mInputEnabledTextField.text = "LOGGER CAPTURING INPUT, F4";
         mInputEnabledTextField.border = true;
         mInputEnabledTextField.borderColor = 16711680;
         mLogPanelContainer.addChild(mInputEnabledTextField);
         mChannelTextField = new TextField();
         mChannelTextField.width = width;
         mChannelTextField.height = 20;
         mChannelTextField.x = x;
         mChannelTextField.y = y;
         mLogPanelContainer.addChild(mChannelTextField);
         setInputEnabled(mLoggerPanelInputEnabled);
         if(childIndex >= 0)
         {
            container.addChildAt(mLogPanelContainer,childIndex);
         }
         else
         {
            container.addChild(mLogPanelContainer);
         }
      }
      
      public static function setInputEnabled(value:Boolean) : void
      {
         if(!LOGGER_ENABLED)
         {
            return;
         }
         mLoggerPanelInputEnabled = value;
         mLogPanelContainer.mouseChildren = mLoggerPanelInputEnabled;
         mLogPanelContainer.mouseEnabled = mLoggerPanelInputEnabled;
         mChannelTextField.mouseEnabled = mLoggerPanelInputEnabled;
         mLogTextField.mouseEnabled = mLoggerPanelInputEnabled;
         mInputEnabledTextField.visible = mLoggerPanelInputEnabled;
      }
      
      public static function keyDown(e:KeyboardEvent) : void
      {
         if(!LOGGER_ENABLED)
         {
            return;
         }
         if(e.keyCode == LOGGER_KEY_TOGGLE)
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
         else if(e.keyCode == LOGGER_KEY_PREVIOUS_CHANNEL)
         {
            --currentChannel;
            if(currentChannel < -1)
            {
               currentChannel = -1;
            }
            updateLog();
         }
         else if(e.keyCode == LOGGER_KEY_NEXT_CHANNEL)
         {
            ++currentChannel;
            updateLog();
         }
         else if(e.keyCode == LOGGER_KEY_TOGGLE_INPUT)
         {
            setInputEnabled(!mLoggerPanelInputEnabled);
         }
      }
      
      public static function setKeys(toggleKey:int = 113.0, nextChannelKey:int = 115.0, previousChannelKey:int = 114.0, toggleInputKey:int = 117.0) : void
      {
         LOGGER_KEY_TOGGLE = toggleKey;
         LOGGER_KEY_PREVIOUS_CHANNEL = nextChannelKey;
         LOGGER_KEY_NEXT_CHANNEL = previousChannelKey;
      }
   }
}

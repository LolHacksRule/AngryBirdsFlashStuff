package §_-RG§
{
   import flash.display.DisplayObjectContainer;
   import flash.display.Graphics;
   import flash.display.Sprite;
   import flash.events.KeyboardEvent;
   import flash.text.TextField;
   import flash.ui.Keyboard;
   import flash.utils.getQualifiedClassName;
   
   public class §_-HT§
   {
      
      public static const §_-x3§:Boolean = true;
      
      public static const §_-IW§:Boolean = true;
      
      public static const §_-rA§:int = 0;
      
      public static const §_-Lq§:int = 1;
      
      public static const §_-SM§:int = 500;
      
      private static var §_-qI§:Array = null;
      
      private static var §_-nL§:Number = 0;
      
      public static var §_-uc§:int = Keyboard.F1;
      
      public static var §_-4y§:int = Keyboard.F3;
      
      public static var §_-uO§:int = Keyboard.F2;
      
      public static var §_-DD§:int = Keyboard.F4;
      
      public static var §_-B-§:Boolean = false;
      
      public static var §_-GR§:Sprite = null;
      
      private static var §_-Vs§:TextField = null;
      
      private static var §_-um§:TextField = null;
      
      private static var §_-1v§:TextField = null;
      
      private static var §_-Th§:TextField = null;
      
      public static var §_-UD§:int = -1;
      
      public static var §_-w0§:String = "version: Unknown";
      
      {
         init();
      }
      
      public function §_-HT§()
      {
         super();
      }
      
      public static function init() : void
      {
         if(!§_-x3§)
         {
            return;
         }
         §_-qI§ = new Array(§_-SM§);
      }
      
      public static function log(param1:Object, param2:int = 1) : void
      {
         var _loc3_:Number = NaN;
         if(§_-x3§)
         {
            _loc3_ = §_-nL§++ % §_-SM§;
            §_-qI§[_loc3_] = [param1,param2];
            if(param2 == §_-UD§ || §_-UD§ < 0)
            {
               §_-R9§();
            }
         }
         if(§_-IW§)
         {
            if(!param1)
            {
            }
         }
      }
      
      public static function §_-0Z§(param1:Object, param2:int = 1) : void
      {
         var _loc3_:* = undefined;
         log("Object:" + getQualifiedClassName(param1));
         for(_loc3_ in param1)
         {
            log("-[" + _loc3_ + "]: " + param1[_loc3_]);
         }
      }
      
      private static function §_-R9§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:String = null;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         if(!§_-x3§)
         {
            return;
         }
         if(§_-GR§ && §_-GR§.visible)
         {
            if(§_-UD§ < 0)
            {
               §_-1v§.text = "Current channel: ALL";
            }
            else
            {
               §_-1v§.text = "Current channel: " + §_-UD§;
            }
            if(§_-w0§ != null)
            {
               §_-Th§.text = §_-w0§;
            }
            _loc1_ = true;
            if(§_-Vs§.scrollV != §_-Vs§.numLines - int(§_-Vs§.height / (§_-Vs§.textHeight / §_-Vs§.numLines)))
            {
               _loc1_ = false;
            }
            _loc2_ = "";
            _loc3_ = 0;
            while(_loc3_ < §_-SM§)
            {
               _loc4_ = (§_-nL§ + _loc3_ + 1) % 500;
               if(§_-qI§[_loc4_] != null)
               {
                  if(§_-UD§ < 0 || §_-qI§[_loc4_][1] == §_-UD§)
                  {
                     _loc2_ += §_-qI§[_loc4_][0] + "\n";
                  }
               }
               _loc3_++;
            }
            §_-Vs§.text = _loc2_;
            if(_loc1_)
            {
               §_-Vs§.scrollV = §_-Vs§.numLines;
            }
         }
      }
      
      public static function §_-5v§(param1:DisplayObjectContainer, param2:int = 40, param3:int = 40, param4:int = 540, param5:int = 360, param6:int = -1) : void
      {
         if(!§_-x3§)
         {
            return;
         }
         §_-GR§ = new Sprite();
         §_-GR§.visible = false;
         param1.addChild(§_-GR§);
         var _loc7_:Graphics;
         (_loc7_ = §_-GR§.graphics).beginFill(16777215,0);
         _loc7_.drawRect(0,0,1000,1000);
         _loc7_.endFill();
         _loc7_.beginFill(16777215,0.4);
         _loc7_.drawRect(param2,param3,param4,param5);
         _loc7_.endFill();
         §_-Vs§ = new TextField();
         §_-Vs§.width = param4;
         §_-Vs§.height = param5 - 40;
         §_-Vs§.x = param2;
         §_-Vs§.y = param3 + 40;
         §_-Vs§.wordWrap = true;
         §_-GR§.addChild(§_-Vs§);
         §_-um§ = new TextField();
         §_-um§.x = param2 + param4 / 2;
         §_-um§.y = param3;
         §_-um§.width = param4 / 2;
         §_-um§.height = 20;
         §_-um§.text = "LOGGER CAPTURING INPUT, F4";
         §_-um§.border = true;
         §_-um§.borderColor = 16711680;
         §_-GR§.addChild(§_-um§);
         §_-1v§ = new TextField();
         §_-1v§.width = param4;
         §_-1v§.height = 20;
         §_-1v§.x = param2;
         §_-1v§.y = param3;
         §_-GR§.addChild(§_-1v§);
         §_-Th§ = new TextField();
         §_-Th§.width = param4;
         §_-Th§.height = 20;
         §_-Th§.x = param2;
         §_-Th§.y = param3 + 20;
         §_-GR§.addChild(§_-Th§);
         §_-3H§(§_-B-§);
         if(param6 >= 0)
         {
            param1.addChildAt(§_-GR§,param6);
         }
         else
         {
            param1.addChild(§_-GR§);
         }
      }
      
      public static function §_-3H§(param1:Boolean) : void
      {
         if(!§_-x3§)
         {
            return;
         }
         §_-B-§ = param1;
         §_-GR§.mouseChildren = §_-B-§;
         §_-GR§.mouseEnabled = §_-B-§;
         §_-1v§.mouseEnabled = §_-B-§;
         §_-Th§.mouseEnabled = §_-B-§;
         §_-Vs§.mouseEnabled = §_-B-§;
         §_-um§.visible = §_-B-§;
      }
      
      public static function keyDown(param1:KeyboardEvent) : void
      {
         if(!§_-x3§)
         {
            return;
         }
      }
      
      public static function §_-t1§(param1:int = 113, param2:int = 115, param3:int = 114, param4:int = 117) : void
      {
         §_-uc§ = param1;
         §_-uO§ = param2;
         §_-4y§ = param3;
      }
      
      public static function §_-sy§(param1:String) : void
      {
         §_-w0§ = "version:" + param1;
      }
   }
}

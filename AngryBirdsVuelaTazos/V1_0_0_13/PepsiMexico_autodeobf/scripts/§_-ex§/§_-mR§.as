package §_-ex§
{
   import flash.display.DisplayObjectContainer;
   import flash.display.Graphics;
   import flash.display.Sprite;
   import flash.events.KeyboardEvent;
   import flash.text.TextField;
   import flash.ui.Keyboard;
   import flash.utils.getQualifiedClassName;
   
   public class §_-mR§
   {
      
      public static const §_-EW§:Boolean = true;
      
      public static const §_-1M§:Boolean = true;
      
      public static const §_-LS§:int = 0;
      
      public static const §_-AX§:int = 1;
      
      public static const §_-vy§:int = 500;
      
      private static var §_-qT§:Array = null;
      
      private static var §_-8§:Number = 0;
      
      public static var §_-yK§:int = Keyboard.F1;
      
      public static var §_-kY§:int = Keyboard.F3;
      
      public static var §_-nc§:int = Keyboard.F2;
      
      public static var §_-wL§:int = Keyboard.F4;
      
      public static var §_-Nl§:Boolean = false;
      
      public static var §_-86§:Sprite = null;
      
      private static var §_-CS§:TextField = null;
      
      private static var §_-o0§:TextField = null;
      
      private static var §_-PX§:TextField = null;
      
      private static var §_-Gf§:TextField = null;
      
      public static var §_-Hw§:int = -1;
      
      public static var §_-Ks§:String = "version: Unknown";
      
      {
         init();
      }
      
      public function §_-mR§()
      {
         super();
      }
      
      public static function init() : void
      {
         if(!§_-EW§)
         {
            return;
         }
         §_-qT§ = new Array(§_-vy§);
      }
      
      public static function log(param1:Object, param2:int = 1) : void
      {
         var _loc3_:Number = NaN;
         if(§_-EW§)
         {
            _loc3_ = §_-8§++ % §_-vy§;
            §_-qT§[_loc3_] = [param1,param2];
            if(param2 == §_-Hw§ || §_-Hw§ < 0)
            {
               §_-Vy§();
            }
         }
         if(§_-1M§)
         {
            if(!param1)
            {
            }
         }
      }
      
      public static function §_-zL§(param1:Object, param2:int = 1) : void
      {
         var _loc3_:* = undefined;
         log("Object:" + getQualifiedClassName(param1));
         for(_loc3_ in param1)
         {
            log("-[" + _loc3_ + "]: " + param1[_loc3_]);
         }
      }
      
      private static function §_-Vy§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:String = null;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         if(!§_-EW§)
         {
            return;
         }
         if(§_-86§ && §_-86§.visible)
         {
            if(§_-Hw§ < 0)
            {
               §_-PX§.text = "Current channel: ALL";
            }
            else
            {
               §_-PX§.text = "Current channel: " + §_-Hw§;
            }
            if(§_-Ks§ != null)
            {
               §_-Gf§.text = §_-Ks§;
            }
            _loc1_ = true;
            if(§_-CS§.scrollV != §_-CS§.numLines - int(§_-CS§.height / (§_-CS§.textHeight / §_-CS§.numLines)))
            {
               _loc1_ = false;
            }
            _loc2_ = "";
            _loc3_ = 0;
            while(_loc3_ < §_-vy§)
            {
               _loc4_ = (§_-8§ + _loc3_ + 1) % 500;
               if(§_-qT§[_loc4_] != null)
               {
                  if(§_-Hw§ < 0 || §_-qT§[_loc4_][1] == §_-Hw§)
                  {
                     _loc2_ += §_-qT§[_loc4_][0] + "\n";
                  }
               }
               _loc3_++;
            }
            §_-CS§.text = _loc2_;
            if(_loc1_)
            {
               §_-CS§.scrollV = §_-CS§.numLines;
            }
         }
      }
      
      public static function §_-yA§(param1:DisplayObjectContainer, param2:int = 40, param3:int = 40, param4:int = 540, param5:int = 360, param6:int = -1) : void
      {
         if(!§_-EW§)
         {
            return;
         }
         §_-86§ = new Sprite();
         §_-86§.visible = false;
         param1.addChild(§_-86§);
         var _loc7_:Graphics;
         (_loc7_ = §_-86§.graphics).beginFill(16777215,0);
         _loc7_.drawRect(0,0,1000,1000);
         _loc7_.endFill();
         _loc7_.beginFill(16777215,0.4);
         _loc7_.drawRect(param2,param3,param4,param5);
         _loc7_.endFill();
         §_-CS§ = new TextField();
         §_-CS§.width = param4;
         §_-CS§.height = param5 - 40;
         §_-CS§.x = param2;
         §_-CS§.y = param3 + 40;
         §_-CS§.wordWrap = true;
         §_-86§.addChild(§_-CS§);
         §_-o0§ = new TextField();
         §_-o0§.x = param2 + param4 / 2;
         §_-o0§.y = param3;
         §_-o0§.width = param4 / 2;
         §_-o0§.height = 20;
         §_-o0§.text = "LOGGER CAPTURING INPUT, F4";
         §_-o0§.border = true;
         §_-o0§.borderColor = 16711680;
         §_-86§.addChild(§_-o0§);
         §_-PX§ = new TextField();
         §_-PX§.width = param4;
         §_-PX§.height = 20;
         §_-PX§.x = param2;
         §_-PX§.y = param3;
         §_-86§.addChild(§_-PX§);
         §_-Gf§ = new TextField();
         §_-Gf§.width = param4;
         §_-Gf§.height = 20;
         §_-Gf§.x = param2;
         §_-Gf§.y = param3 + 20;
         §_-86§.addChild(§_-Gf§);
         §_-pL§(§_-Nl§);
         if(param6 >= 0)
         {
            param1.addChildAt(§_-86§,param6);
         }
         else
         {
            param1.addChild(§_-86§);
         }
      }
      
      public static function §_-pL§(param1:Boolean) : void
      {
         if(!§_-EW§)
         {
            return;
         }
         §_-Nl§ = param1;
         §_-86§.mouseChildren = §_-Nl§;
         §_-86§.mouseEnabled = §_-Nl§;
         §_-PX§.mouseEnabled = §_-Nl§;
         §_-Gf§.mouseEnabled = §_-Nl§;
         §_-CS§.mouseEnabled = §_-Nl§;
         §_-o0§.visible = §_-Nl§;
      }
      
      public static function keyDown(param1:KeyboardEvent) : void
      {
         if(!§_-EW§)
         {
            return;
         }
      }
      
      public static function §_-ev§(param1:int = 113, param2:int = 115, param3:int = 114, param4:int = 117) : void
      {
         §_-yK§ = param1;
         §_-nc§ = param2;
         §_-kY§ = param3;
      }
      
      public static function §_-OA§(param1:String) : void
      {
         §_-Ks§ = "version:" + param1;
      }
   }
}

package §[#[§
{
   import §&"`§.§"#x§;
   import §1"N§.§4#G§;
   import §2G§.§#"8§;
   import §;#D§.§3#U§;
   import §@0§.§<!v§;
   import com.angrybirds.fonts.AngryBirdsFont;
   import com.rovio.assets.§!"f§;
   import flash.display.FrameLabel;
   import flash.display.MovieClip;
   import flash.text.Font;
   import flash.text.TextField;
   import flash.text.TextFormat;
   
   public class §=#Q§
   {
      
      protected static var §[#6§:Font = new AngryBirdsFont();
       
      
      public function §=#Q§()
      {
         super();
      }
      
      public static function §9#H§(param1:MovieClip, param2:String) : Boolean
      {
         var _loc3_:FrameLabel = null;
         for each(_loc3_ in param1.currentLabels)
         {
            if(_loc3_.name == param2)
            {
               return true;
            }
         }
         return false;
      }
      
      public static function §[!]§(param1:Number) : Boolean
      {
         var _loc2_:Date = new Date();
         var _loc3_:Number = Math.round(_loc2_.valueOf() / 1000 / 60 / 60 / 24);
         var _loc4_:Number;
         return (_loc4_ = _loc3_ - param1) < §<!v§.§;!O§;
      }
      
      public static function §"!8§(param1:§"#x§) : void
      {
         if(!param1)
         {
            return;
         }
         if(!§#"8§(AngryBirdsBase.singleton.dataModel).§3S§.§<#x§(param1.id))
         {
            §#"8§(AngryBirdsBase.singleton.dataModel).§3S§.§&"E§(§4#G§.§<"9§,[param1.id]);
         }
         var _loc2_:int = §#"8§(AngryBirdsBase.singleton.dataModel).§9!H§.indexOf(param1.id);
         if(_loc2_ > -1)
         {
            §#"8§(AngryBirdsBase.singleton.dataModel).§9!H§.splice(_loc2_,1);
         }
         var _loc3_:int = 0;
         while(_loc3_ < param1.§?" §())
         {
            _loc2_ = §#"8§(AngryBirdsBase.singleton.dataModel).§ $>§.indexOf(param1.id + param1.getPricePoint(_loc3_).price);
            if(_loc2_ > -1)
            {
               §#"8§(AngryBirdsBase.singleton.dataModel).§3S§.§&"E§(§4#G§.§<"9§,[param1.id + param1.getPricePoint(_loc3_).price]);
               §#"8§(AngryBirdsBase.singleton.dataModel).§ $>§.splice(_loc2_,1);
            }
            _loc3_++;
         }
         (§3#U§.§9#^§ as §,A§).§"#v§();
      }
      
      public static function §0$,§(param1:TextField, param2:String, param3:Number = 0) : void
      {
         var _loc4_:Number = NaN;
         var _loc5_:int = 0;
         var _loc6_:int = 0;
         var _loc7_:* = null;
         var _loc8_:Number = NaN;
         var _loc9_:String = null;
         param1.text = param2;
         if(!§[#6§.hasGlyphs(param2))
         {
            param1.embedFonts = false;
            param1.setTextFormat(new TextFormat("_sans"));
         }
         else
         {
            param1.embedFonts = true;
            param1.setTextFormat(param1.defaultTextFormat);
         }
         if(param3 > 0)
         {
            if(param1.textWidth > param3)
            {
               _loc4_ = param1.textWidth / param2.length;
               _loc6_ = _loc5_ = param3 / _loc4_;
               _loc7_ = param2.substring(0,_loc6_) + "...";
               param1.text = _loc7_;
               if((_loc8_ = param1.textWidth) > param3)
               {
                  while(_loc8_ > param3 && _loc6_ > 0)
                  {
                     _loc6_--;
                     _loc7_ = param2.substring(0,_loc6_) + "...";
                     param1.text = _loc7_;
                     _loc8_ = param1.textWidth;
                  }
               }
               else if(param1.textWidth < param3)
               {
                  _loc9_ = _loc7_;
                  while(_loc8_ < param3 && _loc6_ < param2.length)
                  {
                     _loc6_++;
                     _loc7_ = param2.substring(0,_loc6_) + "...";
                     param1.text = _loc7_;
                     if((_loc8_ = param1.textWidth) > param3)
                     {
                        param1.text = _loc9_;
                        break;
                     }
                     _loc9_ = _loc7_;
                  }
               }
            }
         }
      }
      
      public static function §0"k§(param1:Number, param2:Number, param3:Number) : Number
      {
         return Math.max(param2,Math.min(param3,param1));
      }
      
      public static function §-#D§(param1:int) : String
      {
         var _loc3_:Number = NaN;
         var _loc4_:* = undefined;
         var _loc5_:* = undefined;
         var _loc6_:* = undefined;
         var _loc2_:* = "";
         if(param1 > 0)
         {
            _loc3_ = 0;
            if((_loc4_ = Math.floor(param1 / 3600)) >= 36)
            {
               _loc3_ = Math.floor(param1 / 86400);
               param1 -= _loc3_ * 86400;
               _loc4_ = Math.floor(param1 / 3600);
            }
            param1 -= _loc4_ * 3600;
            _loc5_ = Math.floor(param1 / 60);
            param1 -= _loc5_ * 60;
            _loc6_ = Math.floor(param1);
            if(_loc5_ < 10)
            {
               _loc5_ = "0" + _loc5_;
            }
            if(_loc6_ < 10)
            {
               _loc6_ = "0" + _loc6_;
            }
            if(_loc3_ > 0)
            {
               _loc2_ = _loc3_ + "d " + _loc4_ + "h";
            }
            else if(_loc4_ > 0)
            {
               if(_loc4_ < 10)
               {
                  _loc4_ = "0" + _loc4_;
               }
               _loc2_ = _loc4_ + ":" + _loc5_ + ":" + _loc6_;
            }
            else
            {
               _loc2_ = "00:" + _loc5_ + ":" + _loc6_;
            }
         }
         else
         {
            _loc2_ = "00:00";
         }
         return _loc2_;
      }
      
      public static function §5"H§(param1:Number) : Array
      {
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         var _loc8_:int = 0;
         param1 = Math.floor(param1);
         var _loc2_:int = param1 / 60;
         var _loc3_:int = Math.floor(_loc2_ / 1440);
         var _loc4_:* = "";
         if(_loc3_ > 0)
         {
            if(_loc3_ == 1)
            {
               _loc4_ = _loc3_ + " day ";
            }
            else
            {
               _loc4_ = _loc3_ + " days ";
            }
            _loc6_ = Math.floor((_loc2_ - _loc3_ * 1440) / 60);
            _loc4_ += _loc6_ + "h";
         }
         else if((_loc6_ = Math.floor(_loc2_ / 60)) == 0)
         {
            if(param1 >= 60)
            {
               _loc4_ = _loc2_ + "min ";
               _loc7_ = Math.floor(param1 - _loc2_ * 60);
               _loc4_ += _loc7_ + "s";
            }
            else
            {
               _loc4_ = param1 + "s";
            }
         }
         else
         {
            _loc4_ = _loc6_ + "h ";
            _loc8_ = Math.floor(_loc2_ - _loc6_ * 60);
            _loc4_ += _loc8_ + "min";
         }
         return [_loc4_,16777215];
      }
      
      public static function §7$6§(param1:String, param2:String, param3:MovieClip) : void
      {
         var _loc5_:int = 0;
         var _loc6_:MovieClip = null;
         var _loc4_:Class;
         if(_loc4_ = §!"f§.§##?§(param1,false,false))
         {
            _loc5_ = 1;
            _loc6_ = param3.getChildByName(param2 + "_" + _loc5_) as MovieClip;
            while(_loc6_)
            {
               _loc6_.removeChildren();
               _loc6_.addChild(new _loc4_());
               _loc5_++;
               _loc6_ = param3.getChildByName(param2 + "_" + _loc5_) as MovieClip;
            }
         }
      }
   }
}

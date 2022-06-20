package §2G§
{
   import §4",§.§9#H§;
   import §4",§.Avatar;
   import §4§.§7j§;
   import §>#l§.§=#j§;
   import §@`§.§'$8§;
   import §@`§.Item;
   import flash.display.BitmapData;
   import flash.display.MovieClip;
   import flash.geom.Matrix;
   
   public class §&"P§ implements §;"4§
   {
       
      
      private var §9#4§:Array;
      
      private var §0!X§:Boolean = false;
      
      public function §&"P§()
      {
         this.§9#4§ = [];
         super();
      }
      
      public function §>$A§() : void
      {
         var object:Object = null;
         this.§0!X§ = true;
         for each(object in this.§9#4§)
         {
            try
            {
               this.render(object.avatarString,object.callBack,object.imageSize,object.ignoreBackground);
            }
            catch(e:Error)
            {
            }
         }
      }
      
      public function §;!O§() : void
      {
         this.§0!X§ = true;
      }
      
      public function § i§(param1:Avatar) : void
      {
      }
      
      public function render(param1:String, param2:Function, param3:int = 50, param4:Boolean = false, param5:Object = null, param6:Avatar = null, param7:int = 0, param8:Boolean = false, param9:Number = 0.4) : BitmapData
      {
         var _loc10_:Number = NaN;
         var _loc11_:Number = NaN;
         var _loc12_:Array = null;
         var _loc13_:§9#H§ = null;
         var _loc14_:BitmapData = null;
         var _loc15_:MovieClip = null;
         var _loc16_:Item = null;
         var _loc17_:§'$8§ = null;
         var _loc18_:Item = null;
         var _loc19_:Matrix = null;
         if(!this.§0!X§)
         {
            this.§9#4§.push({
               "avatarString":param1,
               "callBack":param2,
               "imageSize":param3,
               "ignoreBackground":param4
            });
            return null;
         }
         _loc10_ = param3 * param9;
         _loc11_ = param3 / 100 / 2;
         _loc12_ = §=#j§.§+!T§(param1);
         _loc13_ = new §9#H§();
         if(!param6)
         {
            for each(_loc16_ in _loc12_)
            {
               if(_loc16_.§'!P§ == "CategoryBirds")
               {
                  _loc17_ = §7j§.§+!,§.characters.§>#6§(_loc16_.mId);
                  param6 = new Avatar(_loc17_);
               }
            }
         }
         if(param6)
         {
            _loc13_.§4!r§(param6,100,170 + param7,true);
         }
         _loc14_ = new BitmapData(param3 + _loc10_,param3 + _loc10_ + param7,true,16777215);
         _loc15_ = new MovieClip();
         if(param6)
         {
            if(param4)
            {
               param6.§;!Z§();
            }
            for each(_loc18_ in _loc12_)
            {
               if(_loc18_.§'!P§ != "CategoryBirds" && _loc18_.§'!P§ != "CategoryBackgrounds")
               {
                  param6.§9t§(_loc18_);
               }
               if(_loc18_.§'!P§ == "CategoryBackgrounds")
               {
                  param6.§8C§(_loc18_.mId);
               }
            }
            _loc15_ = param6.§<N§();
            if(param5)
            {
               _loc15_.gotoAndStop(param5);
            }
            (_loc19_ = new Matrix()).scale(_loc11_,_loc11_);
            _loc19_.translate(_loc10_ / 2,_loc10_ / 2);
            _loc14_.draw(_loc13_,_loc19_,null,null,null,true);
         }
         _loc13_.dispose();
         _loc13_ = null;
         if(param2 != null)
         {
            param2(_loc14_,_loc15_);
         }
         return _loc14_;
      }
   }
}

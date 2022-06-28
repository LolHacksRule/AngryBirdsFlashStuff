package §4;§
{
   import §"D§.§#v§;
   import §%t§.§>!N§;
   import §8!6§.§&!S§;
   import §8!6§.Item;
   import §[!I§.§<-§;
   import §[N§.§<!b§;
   import §[N§.§@!H§;
   import flash.display.BitmapData;
   import flash.display.Sprite;
   import flash.geom.Matrix;
   
   public class §3M§ implements §>!N§
   {
       
      
      private var §9!Q§:Array;
      
      private var §?C§:Boolean = false;
      
      public function §3M§()
      {
         this.§9!Q§ = [];
         super();
      }
      
      public function §1p§() : void
      {
         var object:Object = null;
         this.§?C§ = true;
         for each(object in this.§9!Q§)
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
      
      public function §&!X§() : void
      {
         this.§?C§ = true;
      }
      
      public function render(param1:String, param2:Function, param3:int = 50, param4:Boolean = false) : BitmapData
      {
         var _loc5_:Sprite = null;
         var _loc6_:§5n§ = null;
         var _loc7_:Array = null;
         var _loc8_:§&!S§ = null;
         var _loc9_:Array = null;
         var _loc10_:§@!H§ = null;
         var _loc11_:§<!b§ = null;
         var _loc12_:Item = null;
         var _loc13_:Number = NaN;
         var _loc14_:Number = NaN;
         var _loc15_:BitmapData = null;
         var _loc16_:§<!b§ = null;
         var _loc17_:Item = null;
         var _loc18_:Matrix = null;
         if(!this.§?C§)
         {
            this.§9!Q§.push({
               "avatarString":param1,
               "callBack":param2,
               "imageSize":param3,
               "ignoreBackground":param4
            });
            return null;
         }
         _loc5_ = new Sprite();
         _loc6_ = new §5n§();
         _loc7_ = [];
         for each(_loc8_ in §5n§.§+3§().characters)
         {
            _loc16_ = new §<!b§(_loc8_);
            _loc7_.push(_loc16_);
         }
         _loc9_ = §#v§.§62§(param1);
         _loc10_ = new §@!H§();
         _loc5_.addChild(_loc10_);
         for each(_loc12_ in _loc9_)
         {
            if(_loc12_.§0!R§ == "CategoryBirds")
            {
               _loc11_ = _loc10_.§6y§(_loc12_.§@H§,§<-§.§!!Q§,"CategoryBirds",_loc7_,100,170,true);
            }
         }
         if(param4)
         {
            _loc11_.§`<§();
         }
         _loc13_ = param3 * 0.4;
         _loc14_ = param3 / 100 / 2;
         _loc15_ = new BitmapData(param3 + _loc13_,param3 + _loc13_,true,16777215);
         if(_loc11_)
         {
            for each(_loc17_ in _loc9_)
            {
               if(_loc17_.§0!R§ != "CategoryBirds" && _loc17_.§0!R§ != "CategoryBackgrounds")
               {
                  _loc11_.§1!!§(_loc17_);
               }
               if(_loc17_.§0!R§ == "CategoryBackgrounds")
               {
                  _loc11_.§,U§(_loc17_.§@H§);
               }
            }
            (_loc18_ = new Matrix()).scale(_loc14_,_loc14_);
            _loc18_.translate(_loc13_ / 2,_loc13_ / 2);
            _loc15_.draw(_loc10_,_loc18_,null,null,null,true);
         }
         if(param2 != null)
         {
            param2(_loc15_);
         }
         return _loc15_;
      }
   }
}

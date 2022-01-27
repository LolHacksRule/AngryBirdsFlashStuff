package §#g§
{
   import §+d§.§2!g§;
   import §7"A§.b2Vec2;
   import §9"`§.§-"H§;
   import flash.geom.Point;
   
   public class §2h§
   {
       
      
      private var §""7§:§2!g§;
      
      public function §2h§()
      {
         super();
      }
      
      public function §?!,§(param1:XMLList) : void
      {
         var _loc2_:XML = null;
         var _loc3_:String = null;
         var _loc4_:String = null;
         var _loc5_:Array = null;
         var _loc6_:XML = null;
         var _loc7_:Number = NaN;
         this.§""7§ = new §2!g§();
         for each(_loc2_ in param1.Shape)
         {
            if(_loc2_.@shape == "CIRCLE" || _loc2_.@shape == "POLYGON" || _loc2_.@shape == "NONE")
            {
               _loc3_ = _loc2_.@id;
               _loc4_ = _loc2_.@shape;
               _loc5_ = new Array();
               for each(_loc6_ in _loc2_.Vertex)
               {
                  _loc5_.push(new b2Vec2(_loc6_.@x,_loc6_.@y));
               }
               if(_loc4_ == "CIRCLE")
               {
                  _loc7_ = parseFloat(_loc2_.Radius[0].@value);
                  this.§-"L§(_loc3_,_loc4_,_loc7_,_loc5_);
               }
               else
               {
                  this.§-!&§(_loc3_,_loc4_,_loc5_,_loc2_.@flipAngleCorrection);
               }
            }
            else
            {
               if(_loc2_.attribute("shape").length() <= 0)
               {
                  §-"H§.log("WARNING, LevelItemShapes constructor, bodyType is missing for shape: " + _loc2_.@id);
               }
               if(_loc2_.attribute("width").length() <= 0)
               {
                  §-"H§.log("WARNING, LevelItemShapes constructor, density is missing for shape: " + _loc2_.@id);
               }
               if(_loc2_.attribute("height").length() <= 0)
               {
                  §-"H§.log("WARNING, LevelItemShapes constructor, friction is missing for shape: " + _loc2_.@id);
               }
               this.§-"9§(_loc2_.@id,_loc2_.@shape,_loc2_.@width,_loc2_.@height,_loc2_.@flipAngleCorrection);
            }
         }
      }
      
      public function §-"9§(param1:String, param2:String, param3:Number, param4:Number, param5:Number) : void
      {
         this.§""7§[param1.toLowerCase()] = new §1!H§(param3,param4,param1);
      }
      
      public function §-!&§(param1:String, param2:String, param3:Array, param4:Number) : void
      {
         var _loc5_:§'<§ = new §7""§(Vector.<b2Vec2>(param3),param1);
         this.§""7§[param1.toLowerCase()] = _loc5_;
      }
      
      public function §-"L§(param1:String, param2:String, param3:Number, param4:Array) : void
      {
         var _loc5_:§'<§ = new §<b§(param3,new Point(param4[0].x,param4[0].y),param1);
         this.§""7§[param1.toLowerCase()] = _loc5_;
      }
      
      public function §!B§(param1:String) : §'<§
      {
         var _loc2_:§'<§ = this.§""7§[param1.toLowerCase()];
         if(!_loc2_)
         {
            §-"H§.log("WARNING: LevelItemShapes -> getShape request has no return value, this shape does not exist: " + param1);
         }
         return _loc2_;
      }
   }
}

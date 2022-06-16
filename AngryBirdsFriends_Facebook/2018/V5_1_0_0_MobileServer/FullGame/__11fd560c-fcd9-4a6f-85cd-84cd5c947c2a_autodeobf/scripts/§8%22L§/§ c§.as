package §8"L§
{
   import § "%§.b2Vec2;
   import §]!6§.§6Y§;
   import §`7§.§0t§;
   import flash.geom.Point;
   
   public class § c§
   {
       
      
      private var §8!y§:§0t§;
      
      public function § c§()
      {
         super();
      }
      
      public function §%m§(param1:XMLList) : void
      {
         var _loc2_:XML = null;
         var _loc3_:String = null;
         var _loc4_:String = null;
         var _loc5_:Array = null;
         var _loc6_:XML = null;
         var _loc7_:Number = NaN;
         this.§8!y§ = new §0t§();
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
                  this.§["B§(_loc3_,_loc4_,_loc7_,_loc5_);
               }
               else
               {
                  this.§#"+§(_loc3_,_loc4_,_loc5_,_loc2_.@flipAngleCorrection);
               }
            }
            else
            {
               if(_loc2_.attribute("shape").length() <= 0)
               {
                  §6Y§.log("WARNING, LevelItemShapes constructor, bodyType is missing for shape: " + _loc2_.@id);
               }
               if(_loc2_.attribute("width").length() <= 0)
               {
                  §6Y§.log("WARNING, LevelItemShapes constructor, density is missing for shape: " + _loc2_.@id);
               }
               if(_loc2_.attribute("height").length() <= 0)
               {
                  §6Y§.log("WARNING, LevelItemShapes constructor, friction is missing for shape: " + _loc2_.@id);
               }
               this.§8E§(_loc2_.@id,_loc2_.@shape,_loc2_.@width,_loc2_.@height,_loc2_.@flipAngleCorrection);
            }
         }
      }
      
      public function §8E§(param1:String, param2:String, param3:Number, param4:Number, param5:Number) : void
      {
         this.§8!y§[param1.toLowerCase()] = new §?!i§(param3,param4,param1);
      }
      
      public function §#"+§(param1:String, param2:String, param3:Array, param4:Number) : void
      {
         var _loc5_:§!!C§ = new §`$%§(Vector.<b2Vec2>(param3),param1);
         this.§8!y§[param1.toLowerCase()] = _loc5_;
      }
      
      public function §["B§(param1:String, param2:String, param3:Number, param4:Array) : void
      {
         var _loc5_:§!!C§ = new §8g§(param3,new Point(param4[0].x,param4[0].y),param1);
         this.§8!y§[param1.toLowerCase()] = _loc5_;
      }
      
      public function §#!U§(param1:String) : §!!C§
      {
         var _loc2_:§!!C§ = this.§8!y§[param1.toLowerCase()];
         if(!_loc2_)
         {
            §6Y§.log("WARNING: LevelItemShapes -> getShape request has no return value, this shape does not exist: " + param1);
         }
         return _loc2_;
      }
   }
}

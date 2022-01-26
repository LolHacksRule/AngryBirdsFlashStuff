package §_-0y§
{
   public class §_-je§
   {
       
      
      public var mName:String;
      
      public var §_-ip§:String;
      
      public var §_-iU§:Number;
      
      public var §_-M5§:Array;
      
      public var §_-r6§:Number;
      
      public var §_-DJ§:Number;
      
      public var §_-zB§:String;
      
      public var §_-M8§:String;
      
      public var §_-Kk§:Number;
      
      public var §_-Cg§:String;
      
      public function §_-je§(param1:String, param2:XMLList, param3:Number, param4:Number, param5:String, param6:String, param7:Number, param8:String, param9:Number, param10:String)
      {
         var _loc11_:XML = null;
         var _loc12_:Array = null;
         var _loc13_:XML = null;
         super();
         this.mName = param1;
         this.§_-M5§ = new Array();
         this.§_-r6§ = param3;
         this.§_-DJ§ = param4;
         this.§_-zB§ = param5;
         this.§_-ip§ = param6;
         this.§_-iU§ = param7;
         this.§_-M8§ = param8;
         for each(_loc11_ in param2.Layer)
         {
            _loc12_ = [];
            for each(_loc13_ in _loc11_.ParticleEmitter)
            {
               _loc12_.push({
                  "id":_loc13_.@id.toString(),
                  "x":Number(_loc13_.@x) || 0,
                  "y":Number(_loc13_.@y) || 0,
                  "rotation":Number(_loc13_.@rotation) || 0,
                  "scale":Number(_loc13_.@scale) || 1,
                  "alpha":Number(_loc13_.@alpha) || 1,
                  "fastForwardsAfterAdd":Number(_loc13_.@fastForwardsAfterAdd) || 0,
                  "isBehindGraphic":_loc13_.@behindGraphic.toString().toLowerCase() == "true"
               });
            }
            this.§_-9u§(_loc11_.@id,_loc11_.@speed,-1,0,0,_loc11_.@foreground != 0,_loc11_.@static.toString().toLowerCase() == "true",_loc11_.@scale,_loc11_.@tileable.toString().toLowerCase() != "false",_loc11_.@xOffset,_loc11_.@marginX,_loc11_.@bottomOffset,_loc12_);
         }
         this.§_-M5§.reverse();
         this.§_-Kk§ = param9;
         this.§_-Cg§ = param10;
      }
      
      public function §_-9u§(param1:String, param2:Number, param3:Number, param4:Number, param5:Number, param6:Boolean, param7:Boolean, param8:Number, param9:Boolean, param10:Number, param11:Number, param12:Number, param13:Array) : void
      {
         this.§_-M5§[this.§_-M5§.length] = new §_-7O§(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11,param12,param13);
      }
      
      public function §_-cI§() : Number
      {
         return this.§_-Kk§;
      }
   }
}

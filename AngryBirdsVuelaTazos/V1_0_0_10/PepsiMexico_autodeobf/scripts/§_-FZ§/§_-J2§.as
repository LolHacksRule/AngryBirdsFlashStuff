package §_-FZ§
{
   public class §_-J2§
   {
       
      
      public var mName:String;
      
      public var §_-MY§:String;
      
      public var §_-fX§:Number;
      
      public var §_-j0§:Array;
      
      public var §_-4M§:Number;
      
      public var §_-xb§:Number;
      
      public var §_-KQ§:String;
      
      public var §_-id§:String;
      
      public var §_-tq§:Number;
      
      public var §_-81§:String;
      
      public function §_-J2§(param1:String, param2:XMLList, param3:Number, param4:Number, param5:String, param6:String, param7:Number, param8:String, param9:Number, param10:String)
      {
         var _loc11_:XML = null;
         var _loc12_:Array = null;
         var _loc13_:XML = null;
         super();
         this.mName = param1;
         this.§_-j0§ = new Array();
         this.§_-4M§ = param3;
         this.§_-xb§ = param4;
         this.§_-KQ§ = param5;
         this.§_-MY§ = param6;
         this.§_-fX§ = param7;
         this.§_-id§ = param8;
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
            this.§_-2J§(_loc11_.@id,_loc11_.@speed,-1,0,0,_loc11_.@foreground != 0,_loc11_.@static == "true",_loc11_.@scale,_loc11_.@tileable != "false",_loc11_.@xOffset,_loc11_.@marginX,_loc11_.@bottomOffset,_loc12_);
         }
         this.§_-j0§.reverse();
         this.§_-tq§ = param9;
         this.§_-81§ = param10;
      }
      
      public function §_-2J§(param1:String, param2:Number, param3:Number, param4:Number, param5:Number, param6:Boolean, param7:Boolean, param8:Number, param9:Boolean, param10:Number, param11:Number, param12:Number, param13:Array) : void
      {
         this.§_-j0§[this.§_-j0§.length] = new §_-lY§(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11,param12,param13);
      }
      
      public function §_-sd§() : Number
      {
         return this.§_-tq§;
      }
   }
}

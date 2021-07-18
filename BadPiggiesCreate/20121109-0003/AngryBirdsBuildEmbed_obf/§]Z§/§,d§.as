package §]Z§
{
   public class §,d§
   {
       
      
      public var mName:String;
      
      public var §!!Z§:String;
      
      public var §=3§:Number;
      
      public var §!4§:Array;
      
      public var §94§:Number;
      
      public var §,!u§:Number;
      
      public var §,'§:String;
      
      public var §?!F§:String;
      
      public var §<v§:Number;
      
      public var §-§:String;
      
      public function §,d§(param1:String, param2:XMLList, param3:Number, param4:Number, param5:String, param6:String, param7:Number, param8:String, param9:Number, param10:String)
      {
         var _loc18_:Boolean = true;
         var _loc19_:Boolean = false;
         var _loc11_:XML = null;
         var _loc12_:Array = null;
         var _loc13_:XML = null;
         if(!_loc19_)
         {
            super();
            if(_loc18_)
            {
               this.mName = param1;
               if(!(_loc19_ && param2))
               {
                  this.§!4§ = new Array();
                  if(_loc18_)
                  {
                     this.§94§ = param3;
                     if(!(_loc19_ && param1))
                     {
                        this.§,!u§ = param4;
                        if(_loc18_ || param3)
                        {
                           addr67:
                           this.§,'§ = param5;
                           this.§!!Z§ = param6;
                           this.§=3§ = param7;
                           this.§?!F§ = param8;
                        }
                     }
                  }
                  §§goto(addr67);
               }
               for each(_loc11_ in param2.Layer)
               {
                  _loc12_ = [];
                  if(_loc18_)
                  {
                     var _loc16_:int = 0;
                     if(_loc18_)
                     {
                        for each(_loc13_ in _loc11_.ParticleEmitter)
                        {
                           if(_loc18_ || param2)
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
                        }
                     }
                     if(_loc19_)
                     {
                        continue;
                     }
                  }
                  this.§return§(_loc11_.@id,_loc11_.@speed,-1,0,0,_loc11_.@foreground != 0,_loc11_.@static.toString().toLowerCase() == "true",_loc11_.@scale,_loc11_.@tileable.toString().toLowerCase() != "false",_loc11_.@xOffset,_loc11_.@marginX,_loc11_.@bottomOffset,_loc12_,_loc11_.@optional.toString().toLowerCase() == "true",_loc11_.@sky,_loc11_.@ground,_loc11_.@highQuality.toString().toLowerCase() == "true");
               }
               if(!_loc19_)
               {
                  this.§!4§.reverse();
                  if(_loc18_)
                  {
                     §§goto(addr288);
                  }
                  §§goto(addr298);
               }
               addr288:
               this.§<v§ = param9;
               if(_loc18_ || param2)
               {
                  addr298:
                  this.§-§ = param10;
               }
               return;
            }
         }
         §§goto(addr67);
      }
      
      public function §return§(param1:String, param2:Number, param3:Number, param4:Number, param5:Number, param6:Boolean, param7:Boolean, param8:Number, param9:Boolean, param10:Number, param11:Number, param12:Number, param13:Array, param14:Boolean, param15:String, param16:String, param17:Boolean = false) : void
      {
         var _loc18_:Boolean = false;
         var _loc19_:Boolean = true;
         if(_loc19_ || param2)
         {
            this.§!4§[this.§!4§.length] = new §0!H§(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11,param12,param13,param14,param15,param16,param17);
         }
      }
      
      public function §9Z§() : Number
      {
         return this.§<v§;
      }
   }
}

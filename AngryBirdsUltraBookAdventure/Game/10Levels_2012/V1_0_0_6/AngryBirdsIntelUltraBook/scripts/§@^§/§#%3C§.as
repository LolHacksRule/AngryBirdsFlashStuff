package §@^§
{
   public class §#<§
   {
       
      
      public var mName:String;
      
      public var §>A§:String;
      
      public var §[!A§:Number;
      
      public var §,!T§:Array;
      
      public var §"7§:Number;
      
      public var §`!w§:Number;
      
      public var §8%§:String;
      
      public var §`@§:String;
      
      public var §'!u§:Number;
      
      public var §]?§:String;
      
      public function §#<§(param1:String, param2:XMLList, param3:Number, param4:Number, param5:String, param6:String, param7:Number, param8:String, param9:Number, param10:String)
      {
         var _loc18_:Boolean = false;
         var _loc19_:Boolean = true;
         var _loc11_:XML = null;
         var _loc12_:Array = null;
         var _loc13_:XML = null;
         if(!(_loc18_ && param3))
         {
            super();
            while(true)
            {
               this.mName = param1;
               loop1:
               while(!(_loc18_ && param3))
               {
                  this.§,!T§ = new Array();
                  loop2:
                  while(true)
                  {
                     this.§"7§ = param3;
                     loop3:
                     while(true)
                     {
                        this.§`!w§ = param4;
                        loop4:
                        while(!_loc18_)
                        {
                           this.§8%§ = param5;
                           continue loop2;
                           addr40:
                           if(!(_loc19_ || param1))
                           {
                              continue;
                           }
                           if(_loc18_)
                           {
                              continue loop3;
                           }
                           while(false)
                           {
                              loop7:
                              while(true)
                              {
                                 this.§[!A§ = param7;
                                 while(!_loc18_)
                                 {
                                    this.§`@§ = param8;
                                    if(_loc18_)
                                    {
                                       continue;
                                    }
                                    §§goto(addr40);
                                 }
                                 addr62:
                                 while(!_loc18_)
                                 {
                                    continue loop7;
                                 }
                                 continue loop2;
                              }
                              continue loop4;
                           }
                           for each(_loc11_ in param2.Layer)
                           {
                              _loc12_ = [];
                              if(!(_loc18_ && param1))
                              {
                                 var _loc16_:int = 0;
                                 if(_loc19_ || this)
                                 {
                                    for each(_loc13_ in _loc11_.ParticleEmitter)
                                    {
                                       if(!(_loc18_ && param3))
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
                                 if(_loc18_)
                                 {
                                    continue;
                                 }
                              }
                              this.§2!e§(_loc11_.@id,_loc11_.@speed,-1,0,0,_loc11_.@foreground != 0,_loc11_.@static.toString().toLowerCase() == "true",_loc11_.@scale,_loc11_.@tileable.toString().toLowerCase() != "false",_loc11_.@xOffset,_loc11_.@marginX,_loc11_.@bottomOffset,_loc12_,_loc11_.@optional.toString().toLowerCase() == "true",_loc11_.@sky,_loc11_.@ground,_loc11_.@highQuality.toString().toLowerCase() == "true");
                           }
                           if(_loc19_ || param3)
                           {
                              this.§,!T§.reverse();
                           }
                           while(true)
                           {
                              this.§'!u§ = param9;
                              while(!(_loc18_ && param3))
                              {
                                 this.§]?§ = param10;
                                 if(_loc19_ || param1)
                                 {
                                    return;
                                 }
                              }
                           }
                        }
                        continue loop1;
                     }
                  }
               }
            }
         }
         §§goto(addr49);
      }
      
      public function §2!e§(param1:String, param2:Number, param3:Number, param4:Number, param5:Number, param6:Boolean, param7:Boolean, param8:Number, param9:Boolean, param10:Number, param11:Number, param12:Number, param13:Array, param14:Boolean, param15:String, param16:String, param17:Boolean = false) : void
      {
         var _loc18_:Boolean = true;
         var _loc19_:Boolean = false;
         if(!(_loc19_ && param3))
         {
            this.§,!T§[this.§,!T§.length] = new §<!T§(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11,param12,param13,param14,param15,param16,param17);
         }
      }
      
      public function §3!n§() : Number
      {
         return this.§'!u§;
      }
   }
}

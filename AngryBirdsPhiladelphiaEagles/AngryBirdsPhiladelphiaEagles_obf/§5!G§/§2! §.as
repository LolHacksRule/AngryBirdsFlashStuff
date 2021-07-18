package §5!G§
{
   public class §2! §
   {
       
      
      public var mName:String;
      
      public var §+!Q§:String;
      
      public var §,§:Number;
      
      public var §8!<§:Array;
      
      public var §0!§:Number;
      
      public var §'!Q§:Number;
      
      public var §]!6§:String;
      
      public var §%4§:String;
      
      public var §8X§:Number;
      
      public var §0S§:String;
      
      public function §2! §(param1:String, param2:XMLList, param3:Number, param4:Number, param5:String, param6:String, param7:Number, param8:String, param9:Number, param10:String)
      {
         var _loc18_:Boolean = true;
         var _loc19_:Boolean = false;
         var _loc11_:XML = null;
         var _loc12_:Array = null;
         var _loc13_:XML = null;
         if(_loc18_)
         {
            super();
            loop0:
            while(true)
            {
               this.mName = param1;
               loop1:
               while(true)
               {
                  this.§8!<§ = new Array();
                  loop2:
                  while(true)
                  {
                     this.§0!§ = param3;
                     while(!_loc19_)
                     {
                        this.§'!Q§ = param4;
                        while(true)
                        {
                           this.§]!6§ = param5;
                           if(_loc19_)
                           {
                              break;
                           }
                           continue loop0;
                           addr59:
                           loop6:
                           for(; _loc18_ || param2; while(_loc18_ || this)
                           {
                              if(!_loc18_)
                              {
                                 continue loop2;
                              }
                              this.§%4§ = param8;
                              if(_loc19_ && param2)
                              {
                                 continue;
                              }
                              §§goto(addr39);
                           })
                           {
                              do
                              {
                                 this.§,§ = param7;
                                 continue loop6;
                              }
                              while(false);
                              
                              for each(_loc11_ in param2.Layer)
                              {
                                 _loc12_ = [];
                                 if(!(_loc19_ && param2))
                                 {
                                    var _loc16_:int = 0;
                                    if(_loc18_)
                                    {
                                       for each(_loc13_ in _loc11_.ParticleEmitter)
                                       {
                                          if(!_loc19_)
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
                                    if(!(_loc18_ || param3))
                                    {
                                       continue;
                                    }
                                 }
                                 this.§'!K§(_loc11_.@id,_loc11_.@speed,-1,0,0,_loc11_.@foreground != 0,_loc11_.@static.toString().toLowerCase() == "true",_loc11_.@scale,_loc11_.@tileable.toString().toLowerCase() != "false",_loc11_.@xOffset,_loc11_.@marginX,_loc11_.@bottomOffset,_loc12_,_loc11_.@optional.toString().toLowerCase() == "true",_loc11_.@sky,_loc11_.@ground,_loc11_.@highQuality.toString().toLowerCase() == "true");
                              }
                              if(!(_loc19_ && param2))
                              {
                                 this.§8!<§.reverse();
                                 while(true)
                                 {
                                    this.§8X§ = param9;
                                    §§goto(addr349);
                                 }
                              }
                              addr349:
                              while(true)
                              {
                                 this.§0S§ = param10;
                                 if(!(_loc19_ && param1))
                                 {
                                    if(_loc18_ || this)
                                    {
                                       break;
                                    }
                                    continue loop11;
                                 }
                              }
                              return;
                           }
                        }
                     }
                     continue loop1;
                  }
               }
            }
         }
         while(true)
         {
            this.§+!Q§ = param6;
            §§goto(addr59);
         }
      }
      
      public function §'!K§(param1:String, param2:Number, param3:Number, param4:Number, param5:Number, param6:Boolean, param7:Boolean, param8:Number, param9:Boolean, param10:Number, param11:Number, param12:Number, param13:Array, param14:Boolean, param15:String, param16:String, param17:Boolean = false) : void
      {
         var _loc18_:Boolean = false;
         var _loc19_:Boolean = true;
         if(_loc19_)
         {
            this.§8!<§[this.§8!<§.length] = new §4!$§(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11,param12,param13,param14,param15,param16,param17);
         }
      }
      
      public function §'q§() : Number
      {
         return this.§8X§;
      }
   }
}

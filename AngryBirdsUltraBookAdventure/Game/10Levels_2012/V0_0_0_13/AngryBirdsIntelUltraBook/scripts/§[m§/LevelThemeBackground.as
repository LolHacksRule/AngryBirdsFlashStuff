package §[m§
{
   public class LevelThemeBackground
   {
       
      
      public var mName:String;
      
      public var §>!F§:String;
      
      public var §1!5§:Number;
      
      public var §1!,§:Array;
      
      public var §52§:Number;
      
      public var § V§:Number;
      
      public var §?!R§:String;
      
      public var §&K§:String;
      
      public var §9Y§:Number;
      
      public var §8@§:String;
      
      public function LevelThemeBackground(param1:String, param2:XMLList, param3:Number, param4:Number, param5:String, param6:String, param7:Number, param8:String, param9:Number, param10:String)
      {
         var _loc18_:Boolean = false;
         var _loc19_:Boolean = true;
         var _loc11_:XML = null;
         var _loc12_:Array = null;
         var _loc13_:XML = null;
         if(_loc19_)
         {
            super();
            loop0:
            while(true)
            {
               this.mName = param1;
               while(true)
               {
                  this.§1!,§ = new Array();
                  loop2:
                  while(true)
                  {
                     this.§52§ = param3;
                     loop3:
                     while(true)
                     {
                        this.§ V§ = param4;
                        while(!_loc18_)
                        {
                           this.§?!R§ = param5;
                           while(true)
                           {
                              this.§>!F§ = param6;
                           }
                           loop8:
                           while(!(_loc18_ && param1))
                           {
                              if(_loc18_)
                              {
                                 continue loop0;
                              }
                              this.§&K§ = param8;
                              if(!_loc19_)
                              {
                                 continue;
                              }
                              addr35:
                              if(_loc19_ || param1)
                              {
                                 if(!_loc18_)
                                 {
                                    continue loop3;
                                 }
                                 §§goto(addr83);
                              }
                              while(true)
                              {
                                 addr60:
                                 addr110:
                                 while(true)
                                 {
                                    this.§1!5§ = param7;
                                    continue loop8;
                                 }
                                 for each(_loc11_ in param2.Layer)
                                 {
                                    _loc12_ = [];
                                    if(_loc19_)
                                    {
                                       var _loc16_:int = 0;
                                       if(_loc19_ || param3)
                                       {
                                          for each(_loc13_ in _loc11_.ParticleEmitter)
                                          {
                                             if(!_loc18_)
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
                                       if(!_loc19_)
                                       {
                                          continue;
                                       }
                                    }
                                    this.§ 7§(_loc11_.@id,_loc11_.@speed,-1,0,0,_loc11_.@foreground != 0,_loc11_.@static.toString().toLowerCase() == "true",_loc11_.@scale,_loc11_.@tileable.toString().toLowerCase() != "false",_loc11_.@xOffset,_loc11_.@marginX,_loc11_.@bottomOffset,_loc12_,_loc11_.@optional.toString().toLowerCase() == "true",_loc11_.@sky,_loc11_.@ground,_loc11_.@highQuality.toString().toLowerCase() == "true");
                                 }
                                 if(!(_loc18_ && param3))
                                 {
                                    this.§1!,§.reverse();
                                    while(true)
                                    {
                                       this.§9Y§ = param9;
                                       loop12:
                                       while(!_loc18_)
                                       {
                                          while(true)
                                          {
                                             this.§8@§ = param10;
                                             if(!_loc18_)
                                             {
                                                break;
                                             }
                                             continue loop12;
                                          }
                                          return;
                                       }
                                    }
                                 }
                                 §§goto(addr345);
                                 §§goto(addr35);
                              }
                           }
                        }
                        continue loop2;
                     }
                  }
                  if(_loc18_ && this)
                  {
                     continue;
                  }
                  if(false)
                  {
                     §§goto(addr60);
                  }
                  §§goto(addr110);
               }
            }
         }
         §§goto(addr78);
      }
      
      public function § 7§(param1:String, param2:Number, param3:Number, param4:Number, param5:Number, param6:Boolean, param7:Boolean, param8:Number, param9:Boolean, param10:Number, param11:Number, param12:Number, param13:Array, param14:Boolean, param15:String, param16:String, param17:Boolean = false) : void
      {
         var _loc18_:Boolean = true;
         var _loc19_:Boolean = false;
         if(!(_loc19_ && param3))
         {
            this.§1!,§[this.§1!,§.length] = new §#c§(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11,param12,param13,param14,param15,param16,param17);
         }
      }
      
      public function § ! §() : Number
      {
         return this.§9Y§;
      }
   }
}

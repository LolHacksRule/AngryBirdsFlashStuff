package §2Y§
{
   import §"^§.§'X§;
   import §=9§.§?!2§;
   import §=9§.transformCoords;
   import flash.display.BitmapData;
   import flash.geom.Matrix;
   import flash.geom.Matrix3D;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.geom.Vector3D;
   
   public class §7?§ extends DisplayObject
   {
      
      private static var §'^§:Vector3D;
      
      private static var §<Z§:Point;
      
      private static var §6!<§:Matrix;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §'^§ = new Vector3D();
            do
            {
               §<Z§ = new Point();
               do
               {
                  §6!<§ = new Matrix();
               }
               while(!(_loc1_ || §7?§));
               
            }
            while(_loc2_ && _loc1_);
            
         }
      }
      
      protected var §-!^§:§?!2§;
      
      private var §5u§:Number = 0.0;
      
      private var §!!@§:Number = 0.0;
      
      private var §`!G§:uint = 16777215;
      
      public function §7?§(param1:Number, param2:Number, param3:uint = 16777215, param4:Boolean = true)
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(!(_loc5_ && param2))
         {
            super();
            loop0:
            while(true)
            {
               this.§-!^§ = new §?!2§(4,param4);
               while(true)
               {
                  this.updateVertexData(param1,param2,param3,param4);
                  loop2:
                  while(_loc6_ || param2)
                  {
                     if(_loc6_)
                     {
                        while(true)
                        {
                           this.§`!G§ = param3;
                           if(_loc6_)
                           {
                              break;
                           }
                           continue loop2;
                        }
                        return;
                        continue;
                     }
                     continue loop0;
                  }
               }
            }
         }
         §§goto(addr62);
      }
      
      public function get highQuality() : Boolean
      {
         return false;
      }
      
      protected function updateVertexData(param1:Number, param2:Number, param3:uint, param4:Boolean) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(!_loc6_)
         {
            §§push(this.§-!^§);
            loop0:
            while(true)
            {
               §§pop().§]v§(param4);
               addr182:
               while(true)
               {
                  §§push(this.§-!^§);
                  continue loop0;
               }
            }
         }
         §§goto(addr145);
      }
      
      override public function getBounds(param1:DisplayObject, param2:Rectangle = null) : Rectangle
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         var _loc7_:int = 0;
         if(_loc9_ || _loc3_)
         {
            if(param2 == null)
            {
               addr29:
               param2 = new Rectangle();
            }
            var _loc3_:Number = Number.MAX_VALUE;
            §§push(-Number.MAX_VALUE);
            if(_loc9_)
            {
               §§push(Number(§§pop()));
            }
            var _loc4_:* = §§pop();
            var _loc5_:Number = Number.MAX_VALUE;
            §§push(-Number.MAX_VALUE);
            if(!(_loc8_ && param2))
            {
               §§push(Number(§§pop()));
            }
            var _loc6_:* = §§pop();
            if(!_loc8_)
            {
               if(param1 == this)
               {
                  if(!_loc8_)
                  {
                     addr623:
                     _loc7_ = 0;
                  }
                  while(true)
                  {
                     §§push(_loc7_);
                     while(true)
                     {
                        §§push(4);
                        while(true)
                        {
                           if(§§pop() >= §§pop())
                           {
                              while(_loc9_ || param2)
                              {
                                 while(true)
                                 {
                                    param2.x = _loc3_;
                                    loop5:
                                    while(true)
                                    {
                                       if(_loc9_)
                                       {
                                          if(!_loc8_)
                                          {
                                             param2.y = _loc5_;
                                             while(true)
                                             {
                                                if(_loc9_)
                                                {
                                                   if(_loc8_)
                                                   {
                                                      break;
                                                   }
                                                   param2.width = _loc4_ - _loc3_;
                                                   continue;
                                                }
                                                continue loop5;
                                             }
                                             while(true)
                                             {
                                                if(!(_loc8_ && param1))
                                                {
                                                   §§goto(addr378);
                                                   §§push(_loc4_);
                                                }
                                                §§goto(addr455);
                                             }
                                          }
                                          §§goto(addr428);
                                       }
                                       §§goto(addr268);
                                    }
                                 }
                              }
                              §§goto(addr569);
                              §§push(_loc4_);
                           }
                           else
                           {
                              §§push(this.§-!^§);
                           }
                           §§goto(addr604);
                        }
                     }
                  }
               }
               else
               {
                  §6!5§(param1,§6!<§);
               }
               §§goto(addr508);
            }
            §§goto(addr623);
         }
         §§goto(addr29);
      }
      
      public function §>!-§(param1:int) : uint
      {
         return this.§-!^§.§!z§(param1);
      }
      
      public function setVertexColor(param1:int, param2:uint) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && param1))
         {
            this.§-!^§.§&5§(param1,param2);
         }
      }
      
      public function §9J§(param1:int) : Number
      {
         return this.§-!^§.§;L§(param1);
      }
      
      public function setVertexAlpha(param1:int, param2:Number) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && param2))
         {
            this.§-!^§.§import§(param1,param2);
         }
      }
      
      public function get color() : uint
      {
         return this.§`!G§;
      }
      
      override public function set color(param1:uint) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            if(this.§`!G§ != param1)
            {
               if(!_loc2_)
               {
                  this.§`!G§ = param1;
               }
               do
               {
                  this.§-!^§.§8! §(param1,1);
               }
               while(!(_loc3_ || _loc2_));
               
               addr47:
            }
            return;
         }
         §§goto(addr47);
      }
      
      public function copyVertexDataTo(param1:§?!2§, param2:int = 0, param3:Number = 1.0, param4:Matrix3D = null) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(_loc6_)
         {
            this.§-!^§.copyTo(param1,param2,param3,true,param4);
         }
      }
      
      override public function render(param1:§'X§, param2:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || this)
         {
            param1.batchQuad(this,param2);
         }
      }
      
      public function get useColor() : Boolean
      {
         return true;
      }
      
      public function get clippedBitmapData() : BitmapData
      {
         return null;
      }
      
      public function get §8!`§() : Number
      {
         return this.§5u§;
      }
      
      public function get §&+§() : Number
      {
         return this.§!!@§;
      }
   }
}

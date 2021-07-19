package §'!6§
{
   import §!=§.§`b§;
   import §!=§.transformCoords;
   import §"a§.§>w§;
   import flash.display.BitmapData;
   import flash.geom.Matrix;
   import flash.geom.Matrix3D;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.geom.Vector3D;
   
   public class §5T§ extends DisplayObject
   {
      
      private static var §]9§:Vector3D;
      
      private static var §5"E§:Point;
      
      private static var §`+§:Matrix;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §]9§ = new Vector3D();
         }
         while(true)
         {
            §5"E§ = new Point();
            while(!_loc1_)
            {
               §`+§ = new Matrix();
               if(!(_loc1_ && _loc2_))
               {
                  return;
               }
            }
         }
      }
      
      protected var §^!S§:§`b§;
      
      private var §#!V§:Number = 0.0;
      
      private var §[!L§:Number = 0.0;
      
      private var §+!m§:uint = 16777215;
      
      public function §5T§(param1:Number, param2:Number, param3:uint = 16777215, param4:Boolean = true)
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(_loc6_)
         {
            super();
         }
         loop0:
         while(true)
         {
            this.§^!S§ = new §`b§(4,param4);
            while(true)
            {
               this.updateVertexData(param1,param2,param3,param4);
               while(_loc6_ || this)
               {
                  if(_loc6_)
                  {
                     this.§+!m§ = param3;
                     if(!(_loc5_ && param3))
                     {
                        return;
                     }
                     continue;
                     continue;
                  }
                  continue loop0;
               }
            }
         }
      }
      
      public function get highQuality() : Boolean
      {
         return false;
      }
      
      protected function updateVertexData(param1:Number, param2:Number, param3:uint, param4:Boolean) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(!(_loc6_ && param2))
         {
            §§push(this.§^!S§);
            loop0:
            while(true)
            {
               §§pop().§7!F§(param4);
               addr187:
               while(true)
               {
                  §§push(this.§^!S§);
                  continue loop0;
               }
            }
         }
         §§goto(addr131);
      }
      
      override public function getBounds(param1:DisplayObject, param2:Rectangle = null) : Rectangle
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         var _loc7_:* = 0;
         if(!_loc8_)
         {
            if(param2 == null)
            {
               addr24:
               param2 = new Rectangle();
            }
            var _loc3_:Number = Number.MAX_VALUE;
            §§push(-Number.MAX_VALUE);
            if(!(_loc8_ && this))
            {
               §§push(Number(§§pop()));
            }
            var _loc4_:* = §§pop();
            var _loc5_:Number = Number.MAX_VALUE;
            §§push(-Number.MAX_VALUE);
            if(_loc9_ || _loc3_)
            {
               §§push(Number(§§pop()));
            }
            var _loc6_:* = §§pop();
            if(!(_loc8_ && _loc3_))
            {
               if(param1 == this)
               {
                  if(!(_loc8_ && this))
                  {
                     addr683:
                     _loc7_ = 0;
                  }
                  while(true)
                  {
                     §§push(_loc7_);
                     loop1:
                     while(true)
                     {
                        §§push(4);
                        while(true)
                        {
                           if(§§pop() >= §§pop())
                           {
                              while(true)
                              {
                                 loop4:
                                 while(true)
                                 {
                                    param2.x = _loc3_;
                                    loop5:
                                    while(true)
                                    {
                                       if(!(_loc8_ && param1))
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
                                             if(_loc9_ || param2)
                                             {
                                                if(!(_loc8_ && this))
                                                {
                                                   if(_loc9_)
                                                   {
                                                      continue loop4;
                                                   }
                                                   §§goto(addr609);
                                                }
                                                else
                                                {
                                                   §§goto(addr360);
                                                }
                                             }
                                             §§goto(addr160);
                                          }
                                       }
                                       else
                                       {
                                          while(true)
                                          {
                                             break loop5;
                                          }
                                          addr561:
                                       }
                                    }
                                    while(true)
                                    {
                                       if(!(_loc9_ || param1))
                                       {
                                          continue loop1;
                                       }
                                       _loc7_ = §§pop();
                                       §§goto(addr550);
                                    }
                                 }
                              }
                           }
                           else
                           {
                              §§push(this.§^!S§);
                           }
                           §§goto(addr669);
                        }
                     }
                  }
               }
               else
               {
                  §'!D§(param1,§`+§);
               }
               §§goto(addr561);
            }
            §§goto(addr683);
         }
         §§goto(addr24);
      }
      
      public function §="B§(param1:int) : uint
      {
         return this.§^!S§.§9"O§(param1);
      }
      
      public function setVertexColor(param1:int, param2:uint) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            this.§^!S§.§<!<§(param1,param2);
         }
      }
      
      public function §%N§(param1:int) : Number
      {
         return this.§^!S§.§ "N§(param1);
      }
      
      public function setVertexAlpha(param1:int, param2:Number) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            this.§^!S§.§^!0§(param1,param2);
         }
      }
      
      public function get color() : uint
      {
         return this.§+!m§;
      }
      
      override public function set color(param1:uint) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            if(this.§+!m§ != param1)
            {
               do
               {
                  this.§+!m§ = param1;
                  do
                  {
                     this.§^!S§.§#"3§(param1,1);
                  }
                  while(!_loc2_);
                  
               }
               while(_loc3_);
               
               addr48:
            }
            return;
         }
         §§goto(addr48);
      }
      
      public function copyVertexDataTo(param1:§`b§, param2:int = 0, param3:Number = 1.0, param4:Matrix3D = null) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(_loc6_)
         {
            this.§^!S§.copyTo(param1,param2,param3,true,param4);
         }
      }
      
      override public function render(param1:§>w§, param2:Number) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
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
      
      public function get §3"W§() : Number
      {
         return this.§#!V§;
      }
      
      public function get §8!h§() : Number
      {
         return this.§[!L§;
      }
   }
}

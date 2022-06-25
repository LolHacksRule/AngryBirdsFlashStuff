package §7i§
{
   import §0P§.Starling;
   import flash.display.BitmapData;
   import flash.display3D.Context3D;
   import flash.display3D.Context3DTextureFormat;
   import flash.display3D.textures.Texture;
   import flash.display3D.textures.TextureBase;
   import flash.utils.ByteArray;
   import starling.events.Event;
   
   public class ConcreteTexture extends §7i§.Texture
   {
       
      
      private var §]!j§:TextureBase;
      
      private var §[v§:int;
      
      private var §5%§:int;
      
      private var §^u§:Boolean;
      
      private var §1y§:Boolean;
      
      private var §6!O§:Boolean;
      
      private var §&^§:Object;
      
      private var §9=§:Boolean = false;
      
      public function ConcreteTexture(param1:TextureBase, param2:int, param3:int, param4:Boolean, param5:Boolean, param6:Boolean = false)
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         if(_loc8_ || param3)
         {
            super();
            while(true)
            {
               this.§]!j§ = param1;
               §§goto(addr100);
            }
         }
         addr100:
         while(true)
         {
            this.§[v§ = param2;
            do
            {
               this.§5%§ = param3;
               do
               {
                  this.§^u§ = param4;
                  do
                  {
                     this.§1y§ = param5;
                     do
                     {
                        this.§6!O§ = param6;
                     }
                     while(!(_loc8_ || this));
                     
                  }
                  while(_loc7_);
                  
               }
               while(!_loc8_);
               
            }
            while(_loc7_);
            
            if(_loc8_)
            {
               if(_loc8_ || param2)
               {
                  break;
               }
               continue loop0;
            }
         }
      }
      
      override public function dispose() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            if(this.§]!j§)
            {
               while(true)
               {
                  this.§]!j§.dispose();
                  addr89:
                  while(true)
                  {
                  }
                  addr50:
                  if(_loc1_ && _loc2_)
                  {
                     continue;
                  }
                  return;
                  addr67:
               }
            }
            while(true)
            {
               this.§=!4§(null);
               loop3:
               while(_loc2_ || _loc2_)
               {
                  while(true)
                  {
                     super.dispose();
                     if(!(_loc2_ || _loc2_))
                     {
                        continue loop3;
                     }
                     §§goto(addr50);
                  }
                  §§goto(addr67);
               }
               §§goto(addr89);
            }
         }
         §§goto(addr80);
      }
      
      public function §=!4§(param1:Object) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            §§push(this.§&^§ == null);
            if(_loc2_)
            {
               §§push(Boolean(§§pop()));
               if(_loc2_)
               {
                  addr156:
                  §§push(§§pop());
                  if(!(_loc3_ && param1))
                  {
                     §§push(Boolean(§§pop()));
                  }
                  if(§§pop())
                  {
                     loop0:
                     while(true)
                     {
                        §§pop();
                        addr167:
                        while(true)
                        {
                           §§push(param1 == null);
                           if(_loc2_ || _loc3_)
                           {
                              continue loop0;
                           }
                           addr123:
                           §§push(Boolean(§§pop()));
                        }
                     }
                     addr166:
                  }
                  while(true)
                  {
                     §§goto(addr125);
                  }
               }
               §§goto(addr166);
            }
            §§goto(addr156);
         }
         §§goto(addr48);
      }
      
      private function §[D§(param1:Event) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.requestBaseTextureUpdate(null);
         }
      }
      
      override public function requestBaseTextureUpdate(param1:Object) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || this)
         {
            this.§9=§ = true;
            while(param1 != null)
            {
               if(!(_loc3_ || param1))
               {
                  break;
               }
               addr71:
               if(!(_loc3_ || _loc3_))
               {
                  continue;
               }
               this.§=!4§(param1);
               §§goto(addr71);
            }
            return;
         }
         §§goto(addr71);
      }
      
      public function get § !S§() : Boolean
      {
         return this.§6!O§;
      }
      
      override public function getBase(param1:Context3D) : TextureBase
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§@Q§(param1);
         }
         return this.§]!j§;
      }
      
      override public function get root() : §7i§.Texture
      {
         return this;
      }
      
      private function §@Q§(param1:Context3D) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc4_:flash.display3D.textures.Texture = null;
         var _loc5_:* = null;
         if(_loc6_)
         {
            §§push(this.§9=§);
            if(_loc6_ || this)
            {
               §§push(!§§pop());
            }
            if(§§pop())
            {
               if(!(_loc7_ && _loc2_))
               {
                  return;
               }
            }
         }
         var _loc2_:BitmapData = this.§&^§ as BitmapData;
         var _loc3_:ByteArray = this.§&^§ as ByteArray;
         if(_loc6_)
         {
            §§push(Boolean(_loc2_));
            if(_loc6_)
            {
               if(§§pop())
               {
                  if(_loc6_ || param1)
                  {
                     _loc4_ = param1.createTexture(this.§[v§,this.§5%§,Context3DTextureFormat.BGRA,this.§6!O§);
                     if(!_loc7_)
                     {
                        Texture.uploadBitmapData(_loc4_,_loc2_,this.§^u§);
                        if(_loc6_)
                        {
                           addr186:
                           this.§]!j§ = _loc4_;
                           if(_loc6_ || _loc2_)
                           {
                           }
                           §§goto(addr199);
                        }
                        this.§9=§ = false;
                     }
                     addr199:
                     return;
                  }
                  _loc4_ = param1.createTexture(this.§[v§,this.§5%§,_loc5_,this.§6!O§);
                  addr157:
                  if(!_loc7_)
                  {
                     Texture.uploadAtfData(_loc4_,_loc3_);
                  }
                  §§goto(addr186);
               }
               else
               {
                  §§push(Boolean(_loc3_));
                  if(_loc6_)
                  {
                     addr111:
                     if(§§pop())
                     {
                        if(_loc6_ || param1)
                        {
                           addr124:
                           if(_loc3_[6] == 2)
                           {
                              if(_loc6_ || _loc2_)
                              {
                                 addr132:
                                 §§push(Context3DTextureFormat.COMPRESSED);
                                 if(_loc7_ && this)
                                 {
                                 }
                                 addr155:
                                 §§push(§§pop());
                              }
                              §§goto(addr157);
                           }
                           else
                           {
                              §§push(Context3DTextureFormat.BGRA);
                              if(_loc6_ || _loc2_)
                              {
                                 §§goto(addr155);
                              }
                           }
                           _loc5_ = §§pop();
                           §§goto(addr157);
                        }
                        §§goto(addr132);
                     }
                     §§goto(addr186);
                  }
                  §§goto(addr124);
               }
            }
            §§goto(addr111);
         }
         §§goto(addr157);
      }
      
      override public function get width() : Number
      {
         return this.§[v§;
      }
      
      override public function get height() : Number
      {
         return this.§5%§;
      }
      
      override public function get mipMapping() : Boolean
      {
         return this.§^u§;
      }
      
      override public function get premultipliedAlpha() : Boolean
      {
         return this.§1y§;
      }
      
      override public function get bitmapData() : BitmapData
      {
         return this.§&^§ as BitmapData;
      }
      
      override public function get clippedBitmapData() : BitmapData
      {
         return this.bitmapData;
      }
   }
}

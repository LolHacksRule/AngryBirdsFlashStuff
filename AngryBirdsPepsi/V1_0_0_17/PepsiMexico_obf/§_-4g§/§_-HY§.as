package §_-4g§
{
   import §_-ia§.getNextPowerOfTwo;
   import flash.display.BitmapData;
   import flash.display3D.textures.TextureBase;
   
   public class §_-HY§ extends Texture
   {
       
      
      private var §_-H4§:TextureBase;
      
      private var §_-sa§:int;
      
      private var §_-cr§:int;
      
      private var §_-ne§:Boolean;
      
      private var §_-Cr§:Boolean;
      
      public function §_-HY§(param1:TextureBase, param2:int, param3:int, param4:Boolean, param5:Boolean)
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         super();
         if(!_loc7_)
         {
            this.§_-H4§ = param1;
            if(!(_loc7_ && param1))
            {
               this.§_-sa§ = param2;
               this.§_-cr§ = param3;
               §§goto(addr47);
            }
            §§goto(addr52);
         }
         addr47:
         this.§_-ne§ = param4;
         if(_loc6_)
         {
            addr52:
            this.§_-Cr§ = param5;
         }
      }
      
      override public function dispose() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            if(this.§_-H4§)
            {
               if(!(_loc1_ && _loc1_))
               {
                  this.§_-H4§.dispose();
                  if(_loc2_ || _loc2_)
                  {
                  }
                  §§goto(addr52);
               }
            }
            super.dispose();
         }
         addr52:
      }
      
      override public function updateBaseTexture(param1:BitmapData, param2:Boolean = true, param3:Boolean = false) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_ || param1)
         {
            this.§_-H4§ = §_-Ml§(param1,param2,param3);
            if(_loc4_ || param2)
            {
               §§goto(addr41);
            }
            §§goto(addr57);
         }
         addr41:
         this.§_-sa§ = getNextPowerOfTwo(param1.width);
         if(_loc4_)
         {
            this.§_-cr§ = getNextPowerOfTwo(param1.height);
            if(_loc4_)
            {
               addr57:
               this.§_-ne§ = param2;
               if(_loc5_ && param3)
               {
               }
               §§goto(addr77);
            }
            this.§_-Cr§ = true;
         }
         addr77:
      }
      
      override public function get base() : TextureBase
      {
         return this.§_-H4§;
      }
      
      override public function get width() : Number
      {
         return this.§_-sa§;
      }
      
      override public function get height() : Number
      {
         return this.§_-cr§;
      }
      
      override public function get mipMapping() : Boolean
      {
         return this.§_-ne§;
      }
      
      override public function get premultipliedAlpha() : Boolean
      {
         return this.§_-Cr§;
      }
   }
}

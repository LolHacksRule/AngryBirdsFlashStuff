package §_-GY§
{
   import §_-Ye§.§_-CT§;
   import §_-Ye§.§_-cP§;
   
   public class Sprite extends DisplayObjectContainer
   {
       
      
      private var §_-6H§:Vector.<§_-O5§>;
      
      private var § case§:int = -1;
      
      public function Sprite()
      {
         super();
      }
      
      override public function dispose() : void
      {
         this.§_-B2§(true);
         super.dispose();
      }
      
      public function flatten() : void
      {
         this.§_-B2§();
         this.§_-6H§ = §_-O5§.§_-p1§(this,this.§_-6H§);
         this.§ case§ = §_-cP§.§_-Fb§;
      }
      
      public function §_-B2§(param1:Boolean = false) : void
      {
         var _loc2_:§_-O5§ = null;
         if(this.§_-6H§)
         {
            if(param1)
            {
               for each(_loc2_ in this.§_-6H§)
               {
                  _loc2_.dispose();
               }
               this.§_-6H§ = null;
            }
            else
            {
               for each(_loc2_ in this.§_-6H§)
               {
                  _loc2_.reset();
               }
            }
         }
      }
      
      public function get §_-An§() : Boolean
      {
         return this.§_-6H§ != null;
      }
      
      override public function render(param1:§_-CT§, param2:Number) : void
      {
         var _loc3_:int = 0;
         var _loc4_:§_-O5§ = null;
         if(this.§_-6H§ && color == 16777215)
         {
            _loc3_ = §_-cP§.§_-Fb§;
            if(this.§ case§ != _loc3_)
            {
               this.flatten();
            }
            for each(_loc4_ in this.§_-6H§)
            {
               _loc4_.render(param1,this.alpha * param2);
            }
         }
         else
         {
            super.render(param1,param2);
         }
      }
   }
}

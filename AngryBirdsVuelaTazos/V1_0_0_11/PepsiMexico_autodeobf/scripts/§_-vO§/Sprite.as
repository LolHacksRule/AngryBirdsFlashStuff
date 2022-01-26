package §_-vO§
{
   import §_-d5§.§_-F§;
   
   public class Sprite extends DisplayObjectContainer
   {
       
      
      private var §_-Mp§:Vector.<§_-PR§>;
      
      public function Sprite()
      {
         super();
      }
      
      override public function dispose() : void
      {
         this.§_-EC§(true);
         super.dispose();
      }
      
      public function flatten() : void
      {
         this.§_-EC§();
         this.§_-Mp§ = §_-PR§.§_-vf§(this,this.§_-Mp§);
      }
      
      public function §_-EC§(param1:Boolean = false) : void
      {
         var _loc2_:§_-PR§ = null;
         if(this.§_-Mp§)
         {
            if(param1)
            {
               for each(_loc2_ in this.§_-Mp§)
               {
                  _loc2_.dispose();
               }
               this.§_-Mp§ = null;
            }
            else
            {
               for each(_loc2_ in this.§_-Mp§)
               {
                  _loc2_.reset();
               }
            }
         }
      }
      
      public function get §_-5X§() : Boolean
      {
         return this.§_-Mp§ != null;
      }
      
      override public function render(param1:§_-F§, param2:Number) : void
      {
         var _loc3_:§_-PR§ = null;
         if(this.§_-Mp§)
         {
            for each(_loc3_ in this.§_-Mp§)
            {
               _loc3_.render(param1,this.alpha * param2);
            }
         }
         else
         {
            super.render(param1,param2);
         }
      }
   }
}

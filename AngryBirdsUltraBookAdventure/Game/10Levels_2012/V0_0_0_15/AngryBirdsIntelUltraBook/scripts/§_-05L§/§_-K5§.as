package §_-05L§
{
   import §_-01E§.§_-00n§;
   import §_-01E§.§_-5b§;
   import §_-01E§.§_-5z§;
   import §_-01E§.§_-M3§;
   import §_-0BH§.§_-FK§;
   import §_-AZ§.§_-07C§;
   import flash.display.Loader;
   import flash.events.MouseEvent;
   import flash.utils.Dictionary;
   
   public class §_-K5§ extends §_-p§
   {
      
      public static var §_-EE§:String;
      
      public static var §_-dT§:Boolean = false;
      
      public static var §_-PT§:Dictionary = new Dictionary();
       
      
      private var §_-l2§:Loader;
      
      private var §_-eg§:§_-Po§;
      
      public function §_-K5§()
      {
         super();
         this.init();
      }
      
      private function init() : void
      {
         addEventListener(MouseEvent.CLICK,this.§_-B5§);
      }
      
      private function §_-co§(param1:Class) : §_-Po§
      {
         if(!§_-PT§[param1])
         {
            §_-PT§[param1] = [];
         }
         var _loc2_:Array = §_-PT§[param1];
         if(_loc2_.length == 0)
         {
            return new param1();
         }
         return _loc2_.pop();
      }
      
      private function §_-03P§(param1:§_-Po§) : void
      {
         var _loc2_:Class = Object(this.§_-eg§).constructor;
         if(!§_-PT§[_loc2_])
         {
            §_-PT§[_loc2_] = [];
         }
         §_-PT§[_loc2_].push(param1);
      }
      
      private function §_-yJ§() : void
      {
         var _loc1_:Class = null;
         switch(Object(this.§_-bF§).constructor)
         {
            case §_-5b§:
               _loc1_ = §_-os§;
               break;
            case §_-5z§:
               _loc1_ = §_-uk§;
               break;
            case §_-00n§:
               _loc1_ = §_-TN§;
         }
         if(!_loc1_)
         {
            §_-FK§.log("WARNING! Unknown score item found!");
            return;
         }
         var _loc2_:Class = !!this.§_-eg§ ? Object(this.§_-eg§).constructor : null;
         if(_loc1_ != _loc2_)
         {
            if(this.§_-eg§)
            {
               this.§_-03P§(removeChild(this.§_-eg§) as §_-Po§);
            }
            this.§_-eg§ = addChild(this.§_-co§(_loc1_)) as §_-Po§;
         }
         this.§_-eg§.data = this.§_-bF§;
      }
      
      private function §_-B5§(param1:MouseEvent) : void
      {
         if(this.§_-bF§ && this.§_-bF§ is §_-5z§)
         {
            §_-E4§.scrollerSprite.dispatchEvent(new §_-07C§(§_-07C§.§_-S1§,data as §_-M3§));
         }
      }
      
      override public function get width() : Number
      {
         return 61;
      }
      
      override public function set data(param1:Object) : void
      {
         super.data = param1;
         this.update();
      }
      
      private function update() : void
      {
         if(data != null)
         {
            this.§_-yJ§();
         }
      }
      
      public function get §_-bF§() : §_-M3§
      {
         return data as §_-M3§;
      }
   }
}

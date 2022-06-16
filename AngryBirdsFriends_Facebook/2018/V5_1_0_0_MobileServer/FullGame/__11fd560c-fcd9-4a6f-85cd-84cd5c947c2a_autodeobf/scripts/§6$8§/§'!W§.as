package §6$8§
{
   public class §'!W§
   {
       
      
      protected var §;!F§:Vector.<§]§>;
      
      public function §'!W§()
      {
         super();
         this.§;!F§ = new Vector.<§]§>();
      }
      
      public function §`#3§(param1:XMLList) : void
      {
         var _loc2_:XML = null;
         for each(_loc2_ in param1.Background)
         {
            this.§'!0§(_loc2_.@id,_loc2_.Layers,_loc2_.@sky,_loc2_.@ground,_loc2_.@sound,_loc2_.@volume,_loc2_.@texture,_loc2_.@backgroundBlockTexture,_loc2_.@icon,_loc2_.@clearGround);
         }
      }
      
      public function loadBackgroundXML(param1:XML) : void
      {
         this.§'!0§(param1.@id,param1.Layers,param1.@sky,param1.@ground,param1.@sound,param1.@volume,param1.@texture,param1.@backgroundBlockTexture,param1.@icon,param1.@clearGround);
      }
      
      private function §'!0§(param1:String, param2:XMLList, param3:Number, param4:Number, param5:String, param6:Number, param7:String, param8:String, param9:String, param10:Number = 0) : void
      {
         var _loc11_:§]§;
         (_loc11_ = new §]§(param1,param3,param4,param5,param6,param7,param8,param9)).§<#X§(param2);
         this.§;!F§.push(_loc11_);
      }
      
      public function getBackground(param1:String) : §]§
      {
         var _loc2_:int = 0;
         while(_loc2_ < this.§;!F§.length)
         {
            if(this.§;!F§[_loc2_].id.toLowerCase() == param1.toLowerCase())
            {
               return this.§;!F§[_loc2_];
            }
            _loc2_++;
         }
         return null;
      }
      
      public function §<9§(param1:XML) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:§]§ = new §]§(param1.@id,param1.@sky,param1.@ground,param1.@sound,param1.@volume,param1.@texture,param1.@backgroundBlockTexture,param1.@icon);
         _loc3_.§<#X§(param1.Layers);
         var _loc4_:int = 0;
         while(_loc4_ < this.§;!F§.length)
         {
            if(this.§;!F§[_loc4_].id.toLowerCase() == _loc3_.id.toLowerCase())
            {
               this.§;!F§[_loc4_] = _loc3_;
               _loc2_ = true;
               break;
            }
            _loc4_++;
         }
         if(!_loc2_)
         {
            this.§;!F§.push(_loc3_);
         }
      }
      
      public function §2"v§() : String
      {
         var _loc1_:int = Math.random() * this.§;!F§.length;
         return this.§;!F§[_loc1_].id;
      }
      
      public function §>#9§() : Array
      {
         var _loc1_:Array = [];
         var _loc2_:int = 0;
         while(_loc2_ < this.§;!F§.length)
         {
            _loc1_.push(this.§;!F§[_loc2_].id.toLowerCase());
            _loc2_++;
         }
         return _loc1_;
      }
   }
}

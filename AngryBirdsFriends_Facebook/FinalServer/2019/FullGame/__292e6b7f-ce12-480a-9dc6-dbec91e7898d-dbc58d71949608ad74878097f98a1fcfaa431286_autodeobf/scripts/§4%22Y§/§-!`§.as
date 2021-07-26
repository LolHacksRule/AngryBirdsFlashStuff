package §4"Y§
{
   public class §-!`§
   {
       
      
      protected var §,i§:Vector.<§+!q§>;
      
      public function §-!`§()
      {
         super();
         this.§,i§ = new Vector.<§+!q§>();
      }
      
      public function §>"+§(param1:XMLList) : void
      {
         var _loc2_:XML = null;
         for each(_loc2_ in param1.Background)
         {
            this.§+o§(_loc2_.@id,_loc2_.Layers,_loc2_.@sky,_loc2_.@ground,_loc2_.@sound,_loc2_.@volume,_loc2_.@texture,_loc2_.@backgroundBlockTexture,_loc2_.@icon,_loc2_.@clearGround);
         }
      }
      
      public function loadBackgroundXML(param1:XML) : void
      {
         this.§+o§(param1.@id,param1.Layers,param1.@sky,param1.@ground,param1.@sound,param1.@volume,param1.@texture,param1.@backgroundBlockTexture,param1.@icon,param1.@clearGround);
      }
      
      private function §+o§(param1:String, param2:XMLList, param3:Number, param4:Number, param5:String, param6:Number, param7:String, param8:String, param9:String, param10:Number = 0) : void
      {
         var _loc11_:§+!q§;
         (_loc11_ = new §+!q§(param1,param3,param4,param5,param6,param7,param8,param9)).§`$$§(param2);
         this.§,i§.push(_loc11_);
      }
      
      public function getBackground(param1:String) : §+!q§
      {
         var _loc2_:int = 0;
         while(_loc2_ < this.§,i§.length)
         {
            if(this.§,i§[_loc2_].id.toLowerCase() == param1.toLowerCase())
            {
               return this.§,i§[_loc2_];
            }
            _loc2_++;
         }
         return null;
      }
      
      public function §3!s§(param1:XML) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:§+!q§ = new §+!q§(param1.@id,param1.@sky,param1.@ground,param1.@sound,param1.@volume,param1.@texture,param1.@backgroundBlockTexture,param1.@icon);
         _loc3_.§`$$§(param1.Layers);
         var _loc4_:int = 0;
         while(_loc4_ < this.§,i§.length)
         {
            if(this.§,i§[_loc4_].id.toLowerCase() == _loc3_.id.toLowerCase())
            {
               this.§,i§[_loc4_] = _loc3_;
               _loc2_ = true;
               break;
            }
            _loc4_++;
         }
         if(!_loc2_)
         {
            this.§,i§.push(_loc3_);
         }
      }
      
      public function §##@§() : String
      {
         var _loc1_:int = Math.random() * this.§,i§.length;
         return this.§,i§[_loc1_].id;
      }
      
      public function §3"l§() : Array
      {
         var _loc1_:Array = [];
         var _loc2_:int = 0;
         while(_loc2_ < this.§,i§.length)
         {
            _loc1_.push(this.§,i§[_loc2_].id.toLowerCase());
            _loc2_++;
         }
         return _loc1_;
      }
   }
}

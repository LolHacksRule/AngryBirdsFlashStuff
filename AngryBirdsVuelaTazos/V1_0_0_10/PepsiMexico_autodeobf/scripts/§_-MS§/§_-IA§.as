package §_-MS§
{
   import flash.display.DisplayObject;
   
   public class §_-IA§ implements §_-xc§
   {
       
      
      private var §_-kz§:Array;
      
      private var §_-QP§:Number;
      
      private var §_-N9§:DisplayObject;
      
      private var §_-u7§:Boolean = false;
      
      public function §_-IA§()
      {
         super();
         this.§_-QP§ = 0;
         this.§_-kz§ = [];
      }
      
      public function add(param1:§_-xc§) : void
      {
         if(param1 != null && this.§_-kz§.indexOf(param1) == -1)
         {
            this.§_-kz§.push(param1);
         }
      }
      
      public function set §_-Jq§(param1:Boolean) : void
      {
         this.§_-u7§ = param1;
      }
      
      public function §_-hQ§(param1:§_-xc§) : void
      {
         var _loc2_:int = this.§_-kz§.indexOf(param1);
         if(_loc2_ != -1)
         {
            this.§_-kz§.splice(_loc2_,1);
         }
      }
      
      public function §_-EB§(param1:Object) : void
      {
         var target:Object = param1;
         if(target == null)
         {
            return;
         }
         this.§_-kz§ = this.§_-kz§.filter(function(param1:Object, param2:int, param3:Array):Boolean
         {
            var _loc4_:*;
            if((_loc4_ = param1 as §_-Wh§) && _loc4_.target == target)
            {
               return false;
            }
            return true;
         });
      }
      
      public function §for §() : void
      {
         this.§_-kz§ = [];
      }
      
      public function §_-0m§(param1:Function, param2:Number, ... rest) : §_-TG§
      {
         if(param1 == null)
         {
            return null;
         }
         var _loc4_:§_-TG§ = new §_-TG§(param1,param2,rest);
         this.add(_loc4_);
         return _loc4_;
      }
      
      public function §_-DV§(param1:Number) : void
      {
         var currentObject:§_-xc§ = null;
         var time:Number = param1;
         if(this.§_-u7§)
         {
            return;
         }
         this.§_-QP§ += time;
         var objectCopy:Array = this.§_-kz§.concat();
         for each(currentObject in objectCopy)
         {
            currentObject.§_-DV§(time);
         }
         this.§_-kz§ = this.§_-kz§.filter(function(param1:§_-xc§, param2:int, param3:Array):Boolean
         {
            return !param1.§_-N1§;
         });
      }
      
      public function get §_-N1§() : Boolean
      {
         return false;
      }
      
      public function get §_-2c§() : Number
      {
         return this.§_-QP§;
      }
   }
}

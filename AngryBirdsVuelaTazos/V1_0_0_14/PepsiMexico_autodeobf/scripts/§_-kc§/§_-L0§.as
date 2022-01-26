package §_-kc§
{
   import flash.display.DisplayObject;
   
   public class §_-L0§ implements §_-EV§
   {
       
      
      private var §_-HC§:Array;
      
      private var §continue§:Number;
      
      private var §_-a5§:DisplayObject;
      
      private var §_-Nc§:Boolean = false;
      
      public function §_-L0§()
      {
         super();
         this.§continue§ = 0;
         this.§_-HC§ = [];
      }
      
      public function add(param1:§_-EV§) : void
      {
         if(param1 != null && this.§_-HC§.indexOf(param1) == -1)
         {
            this.§_-HC§.push(param1);
         }
      }
      
      public function set §_-9m§(param1:Boolean) : void
      {
         this.§_-Nc§ = param1;
      }
      
      public function §_-sA§(param1:§_-EV§) : void
      {
         var _loc2_:int = this.§_-HC§.indexOf(param1);
         if(_loc2_ != -1)
         {
            this.§_-HC§.splice(_loc2_,1);
         }
      }
      
      public function §_-ku§(param1:Object) : void
      {
         var target:Object = param1;
         if(target == null)
         {
            return;
         }
         this.§_-HC§ = this.§_-HC§.filter(function(param1:Object, param2:int, param3:Array):Boolean
         {
            var _loc4_:*;
            if((_loc4_ = param1 as §_-cJ§) && _loc4_.target == target)
            {
               return false;
            }
            return true;
         });
      }
      
      public function §_-c8§() : void
      {
         this.§_-HC§ = [];
      }
      
      public function §_-zj§(param1:Function, param2:Number, ... rest) : §_-H7§
      {
         if(param1 == null)
         {
            return null;
         }
         var _loc4_:§_-H7§ = new §_-H7§(param1,param2,rest);
         this.add(_loc4_);
         return _loc4_;
      }
      
      public function §_-XZ§(param1:Number) : void
      {
         var currentObject:§_-EV§ = null;
         var time:Number = param1;
         if(this.§_-Nc§)
         {
            return;
         }
         this.§continue§ += time;
         if(this.§_-HC§.length == 0)
         {
            return;
         }
         var objectCopy:Array = this.§_-HC§.concat();
         for each(currentObject in objectCopy)
         {
            currentObject.§_-XZ§(time);
         }
         this.§_-HC§ = this.§_-HC§.filter(function(param1:§_-EV§, param2:int, param3:Array):Boolean
         {
            return !param1.§_-Kc§;
         });
      }
      
      public function get §_-Kc§() : Boolean
      {
         return false;
      }
      
      public function get §_-hw§() : Number
      {
         return this.§continue§;
      }
   }
}

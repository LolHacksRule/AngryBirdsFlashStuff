package §_-lh§
{
   import flash.display.DisplayObject;
   
   public class §_-6l§ implements §_-UW§
   {
       
      
      private var §_-5f§:Array;
      
      private var §_-Dv§:Number;
      
      private var §_-Wi§:DisplayObject;
      
      private var §_-rV§:Boolean = false;
      
      private var §_-S8§:Number = 1.0;
      
      public function §_-6l§()
      {
         super();
         this.§_-Dv§ = 0;
         this.§_-5f§ = [];
      }
      
      public function set speed(param1:Number) : void
      {
         this.§_-S8§ = param1;
      }
      
      public function add(param1:§_-UW§) : void
      {
         if(param1 != null && this.§_-5f§.indexOf(param1) == -1)
         {
            this.§_-5f§.push(param1);
         }
      }
      
      public function set §_-xg§(param1:Boolean) : void
      {
         this.§_-rV§ = param1;
      }
      
      public function §_-W-§(param1:§_-UW§) : void
      {
         var _loc2_:int = this.§_-5f§.indexOf(param1);
         if(_loc2_ != -1)
         {
            this.§_-5f§.splice(_loc2_,1);
         }
      }
      
      public function §_-Hf§(param1:Object) : void
      {
         var target:Object = param1;
         if(target == null)
         {
            return;
         }
         this.§_-5f§ = this.§_-5f§.filter(function(param1:Object, param2:int, param3:Array):Boolean
         {
            var _loc4_:*;
            if((_loc4_ = param1 as §_-TH§) && _loc4_.target == target)
            {
               return false;
            }
            return true;
         });
      }
      
      public function §_-vn§() : void
      {
         this.§_-5f§ = [];
      }
      
      public function §_-ds§(param1:Function, param2:Number, ... rest) : §_-ve§
      {
         if(param1 == null)
         {
            return null;
         }
         var _loc4_:§_-ve§ = new §_-ve§(param1,param2,rest);
         this.add(_loc4_);
         return _loc4_;
      }
      
      public function §_-DS§(param1:Number) : void
      {
         var currentObject:§_-UW§ = null;
         var time:Number = param1;
         if(this.§_-rV§)
         {
            return;
         }
         time *= this.§_-S8§;
         this.§_-Dv§ += time;
         if(this.§_-5f§.length == 0)
         {
            return;
         }
         var objectCopy:Array = this.§_-5f§.concat();
         for each(currentObject in objectCopy)
         {
            currentObject.§_-DS§(time);
         }
         this.§_-5f§ = this.§_-5f§.filter(function(param1:§_-UW§, param2:int, param3:Array):Boolean
         {
            return !param1.§_-sY§;
         });
      }
      
      public function get §_-sY§() : Boolean
      {
         return false;
      }
      
      public function get §_-qi§() : Number
      {
         return this.§_-Dv§;
      }
   }
}

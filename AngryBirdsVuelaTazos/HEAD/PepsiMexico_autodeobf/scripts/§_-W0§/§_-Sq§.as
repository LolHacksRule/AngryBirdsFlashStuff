package §_-W0§
{
   import flash.display.DisplayObject;
   
   public class §_-Sq§ implements §_-Ei§
   {
       
      
      private var §_-NP§:Array;
      
      private var §_-tB§:Number;
      
      private var §class§:DisplayObject;
      
      private var §_-DP§:Boolean = false;
      
      private var §_-08§:Number = 1.0;
      
      public function §_-Sq§()
      {
         super();
         this.§_-tB§ = 0;
         this.§_-NP§ = [];
      }
      
      public function set speed(param1:Number) : void
      {
         this.§_-08§ = param1;
      }
      
      public function add(param1:§_-Ei§) : void
      {
         if(param1 != null && this.§_-NP§.indexOf(param1) == -1)
         {
            this.§_-NP§.push(param1);
         }
      }
      
      public function set §_-vd§(param1:Boolean) : void
      {
         this.§_-DP§ = param1;
      }
      
      public function §_-Kg§(param1:§_-Ei§) : void
      {
         var _loc2_:int = this.§_-NP§.indexOf(param1);
         if(_loc2_ != -1)
         {
            this.§_-NP§.splice(_loc2_,1);
         }
      }
      
      public function §_-UW§(param1:Object) : void
      {
         var target:Object = param1;
         if(target == null)
         {
            return;
         }
         this.§_-NP§ = this.§_-NP§.filter(function(param1:Object, param2:int, param3:Array):Boolean
         {
            var _loc4_:*;
            if((_loc4_ = param1 as §_-sW§) && _loc4_.target == target)
            {
               return false;
            }
            return true;
         });
      }
      
      public function §_-Dg§() : void
      {
         this.§_-NP§ = [];
      }
      
      public function §_-4q§(param1:Function, param2:Number, ... rest) : §_-wz§
      {
         if(param1 == null)
         {
            return null;
         }
         var _loc4_:§_-wz§ = new §_-wz§(param1,param2,rest);
         this.add(_loc4_);
         return _loc4_;
      }
      
      public function §_-TL§(param1:Number) : void
      {
         var currentObject:§_-Ei§ = null;
         var time:Number = param1;
         if(this.§_-DP§)
         {
            return;
         }
         time *= this.§_-08§;
         this.§_-tB§ += time;
         if(this.§_-NP§.length == 0)
         {
            return;
         }
         var objectCopy:Array = this.§_-NP§.concat();
         for each(currentObject in objectCopy)
         {
            currentObject.§_-TL§(time);
         }
         this.§_-NP§ = this.§_-NP§.filter(function(param1:§_-Ei§, param2:int, param3:Array):Boolean
         {
            return !param1.§_-qD§;
         });
      }
      
      public function get §_-qD§() : Boolean
      {
         return false;
      }
      
      public function get §_-zf§() : Number
      {
         return this.§_-tB§;
      }
   }
}

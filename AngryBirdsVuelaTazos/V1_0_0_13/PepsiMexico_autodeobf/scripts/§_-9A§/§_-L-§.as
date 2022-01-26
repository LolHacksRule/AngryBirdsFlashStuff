package §_-9A§
{
   import flash.display.DisplayObject;
   
   public class §_-L-§ implements §_-ID§
   {
       
      
      private var §_-eB§:Array;
      
      private var §_-sv§:Number;
      
      private var §_-dc§:DisplayObject;
      
      private var §_-vM§:Boolean = false;
      
      public function §_-L-§()
      {
         super();
         this.§_-sv§ = 0;
         this.§_-eB§ = [];
      }
      
      public function add(param1:§_-ID§) : void
      {
         if(param1 != null && this.§_-eB§.indexOf(param1) == -1)
         {
            this.§_-eB§.push(param1);
         }
      }
      
      public function set §_-xg§(param1:Boolean) : void
      {
         this.§_-vM§ = param1;
      }
      
      public function §_-5G§(param1:§_-ID§) : void
      {
         var _loc2_:int = this.§_-eB§.indexOf(param1);
         if(_loc2_ != -1)
         {
            this.§_-eB§.splice(_loc2_,1);
         }
      }
      
      public function §_-z4§(param1:Object) : void
      {
         var target:Object = param1;
         if(target == null)
         {
            return;
         }
         this.§_-eB§ = this.§_-eB§.filter(function(param1:Object, param2:int, param3:Array):Boolean
         {
            var _loc4_:*;
            if((_loc4_ = param1 as §_-8V§) && _loc4_.target == target)
            {
               return false;
            }
            return true;
         });
      }
      
      public function §_-wd§() : void
      {
         this.§_-eB§ = [];
      }
      
      public function §_-tt§(param1:Function, param2:Number, ... rest) : §_-g3§
      {
         if(param1 == null)
         {
            return null;
         }
         var _loc4_:§_-g3§ = new §_-g3§(param1,param2,rest);
         this.add(_loc4_);
         return _loc4_;
      }
      
      public function §_-rp§(param1:Number) : void
      {
         var currentObject:§_-ID§ = null;
         var time:Number = param1;
         if(this.§_-vM§)
         {
            return;
         }
         this.§_-sv§ += time;
         if(this.§_-eB§.length == 0)
         {
            return;
         }
         var objectCopy:Array = this.§_-eB§.concat();
         for each(currentObject in objectCopy)
         {
            currentObject.§_-rp§(time);
         }
         this.§_-eB§ = this.§_-eB§.filter(function(param1:§_-ID§, param2:int, param3:Array):Boolean
         {
            return !param1.§_-22§;
         });
      }
      
      public function get §_-22§() : Boolean
      {
         return false;
      }
      
      public function get §_-Wc§() : Number
      {
         return this.§_-sv§;
      }
   }
}

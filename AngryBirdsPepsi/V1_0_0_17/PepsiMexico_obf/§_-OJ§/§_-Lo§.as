package §_-OJ§
{
   import §_-4g§.Texture;
   import §_-LP§.§_-19§;
   
   public class §_-Lo§
   {
       
      
      private var §_-v4§:§_-19§;
      
      private var §_-F7§:Number;
      
      public function §_-Lo§(param1:Texture, param2:Number)
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && this))
         {
            super();
            if(_loc4_ || _loc3_)
            {
               this.§_-v4§ = new §_-19§(param1);
               if(_loc4_ || this)
               {
               }
               §§goto(addr59);
            }
            this.§_-F7§ = param2;
         }
         addr59:
      }
      
      public function get image() : §_-19§
      {
         return this.§_-v4§;
      }
      
      public function get lifeTime() : Number
      {
         return this.§_-F7§;
      }
      
      public function dispose() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            §§push(this.§_-v4§);
            if(_loc2_)
            {
               if(§§pop())
               {
                  if(_loc2_)
                  {
                     addr37:
                     this.§_-v4§.dispose();
                     if(_loc2_ || _loc2_)
                     {
                        addr52:
                        this.§_-v4§ = null;
                     }
                  }
                  §§goto(addr52);
               }
               return;
            }
            §§goto(addr37);
         }
         §§goto(addr52);
      }
      
      public function updateLifeTime(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc3_))
         {
            §§push(this);
            §§push(this.§_-F7§);
            if(_loc2_)
            {
               §§push(§§pop() - param1);
            }
            §§pop().§_-F7§ = §§pop();
         }
      }
      
      public function §_-db§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || param1)
         {
            this.§_-F7§ = param1;
         }
      }
      
      public function §_-sb§(param1:Texture) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§_-v4§.texture = param1;
         }
      }
   }
}

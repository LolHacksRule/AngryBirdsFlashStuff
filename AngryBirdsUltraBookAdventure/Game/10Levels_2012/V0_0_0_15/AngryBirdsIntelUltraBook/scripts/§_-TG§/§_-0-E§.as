package §_-TG§
{
   import §_-uY§.§_-09b§;
   import §_-z4§.Texture;
   
   public class §_-0-E§
   {
       
      
      private var §_-0DD§:§_-09b§;
      
      private var §_-047§:Number;
      
      public function §_-0-E§(param1:Texture, param2:Number)
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            super();
         }
         while(true)
         {
            this.§_-0DD§ = new §_-09b§(param1);
            while(!(_loc4_ && _loc3_))
            {
               this.§_-047§ = param2;
               if(_loc3_)
               {
                  return;
               }
            }
         }
      }
      
      public function get image() : §_-09b§
      {
         return this.§_-0DD§;
      }
      
      public function get lifeTime() : Number
      {
         return this.§_-047§;
      }
      
      public function dispose() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            §§push(this.§_-0DD§);
            if(!_loc2_)
            {
               if(§§pop())
               {
                  loop2:
                  while(true)
                  {
                     §§push(this.§_-0DD§);
                     addr59:
                     while(true)
                     {
                        §§pop().dispose();
                        do
                        {
                           this.§_-0DD§ = null;
                        }
                        while(_loc2_);
                        
                        if(!(_loc2_ && this))
                        {
                           break;
                        }
                        continue loop2;
                     }
                  }
                  addr57:
               }
               return;
            }
            §§goto(addr59);
         }
         §§goto(addr57);
      }
      
      public function updateLifeTime(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            §§push(this);
            §§push(this.§_-047§);
            if(_loc3_)
            {
               §§push(§§pop() - param1);
            }
            §§pop().§_-047§ = §§pop();
         }
      }
      
      public function §_-tX§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc3_))
         {
            this.§_-047§ = param1;
         }
      }
      
      public function §_-F§(param1:Texture) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§_-0DD§.texture = param1;
         }
      }
   }
}

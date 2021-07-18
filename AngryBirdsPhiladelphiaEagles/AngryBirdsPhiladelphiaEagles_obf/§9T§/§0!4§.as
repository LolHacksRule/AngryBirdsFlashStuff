package §9T§
{
   import § N§.§1!A§;
   import §8z§.Texture;
   
   public class §0!4§
   {
       
      
      private var §<!8§:§1!A§;
      
      private var §+t§:Number;
      
      public function §0!4§(param1:Texture, param2:Number)
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || this)
         {
            super();
            while(true)
            {
               this.§<!8§ = new §1!A§(param1);
               loop1:
               while(!_loc3_)
               {
                  while(true)
                  {
                     this.§+t§ = param2;
                     if(!(_loc3_ && param1))
                     {
                        break;
                     }
                     continue loop1;
                  }
                  return;
               }
            }
         }
         §§goto(addr69);
      }
      
      public function get image() : §1!A§
      {
         return this.§<!8§;
      }
      
      public function get lifeTime() : Number
      {
         return this.§+t§;
      }
      
      public function dispose() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §§push(this.§<!8§);
            if(!(_loc2_ && this))
            {
               if(§§pop())
               {
                  if(_loc1_)
                  {
                     addr54:
                     this.§<!8§.dispose();
                  }
                  do
                  {
                     this.§<!8§ = null;
                  }
                  while(!_loc1_);
                  
               }
               return;
            }
         }
         §§goto(addr54);
      }
      
      public function updateLifeTime(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            §§push(this);
            §§push(this.§+t§);
            if(!(_loc2_ && param1))
            {
               §§push(§§pop() - param1);
            }
            §§pop().§+t§ = §§pop();
         }
      }
      
      public function §]!D§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§+t§ = param1;
         }
      }
      
      public function §6?§(param1:Texture) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§<!8§.texture = param1;
         }
      }
   }
}

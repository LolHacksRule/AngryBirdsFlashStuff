package §4!<§
{
   import §'!6§.§ "E§;
   import §<5§.Texture;
   
   public class §^t§
   {
       
      
      private var §8!U§:§ "E§;
      
      private var §^"!§:Number;
      
      public function §^t§(param1:Texture, param2:Number)
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && _loc3_))
         {
            super();
            while(true)
            {
               this.§8!U§ = new § "E§(param1);
               loop1:
               while(!(_loc3_ && param1))
               {
                  while(true)
                  {
                     this.§^"!§ = param2;
                     if(!(_loc3_ && param2))
                     {
                        break;
                     }
                     continue loop1;
                  }
                  return;
               }
            }
         }
         §§goto(addr74);
      }
      
      public function get image() : § "E§
      {
         return this.§8!U§;
      }
      
      public function get lifeTime() : Number
      {
         return this.§^"!§;
      }
      
      public function dispose() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §§push(this.§8!U§);
            if(_loc2_)
            {
               if(§§pop())
               {
                  loop0:
                  while(true)
                  {
                     §§push(this.§8!U§);
                     addr55:
                     addr47:
                     while(true)
                     {
                        §§pop().dispose();
                        do
                        {
                           this.§8!U§ = null;
                        }
                        while(!_loc2_);
                        
                        if(_loc2_ || _loc2_)
                        {
                           break;
                        }
                        continue loop0;
                     }
                     §§goto(addr30);
                  }
               }
               addr30:
               return;
            }
            §§goto(addr55);
         }
         §§goto(addr47);
      }
      
      public function updateLifeTime(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc3_)
         {
            §§push(this);
            §§push(this.§^"!§);
            if(!_loc2_)
            {
               §§push(§§pop() - param1);
            }
            §§pop().§^"!§ = §§pop();
         }
      }
      
      public function §9"0§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc2_))
         {
            this.§^"!§ = param1;
         }
      }
      
      public function §0Y§(param1:Texture) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§8!U§.texture = param1;
         }
      }
   }
}

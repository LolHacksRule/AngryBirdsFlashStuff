package § ! §
{
   import §6![§.DisplayObject;
   
   public class §>!H§ extends §5!v§
   {
       
      
      private var §2Y§:Vector.<§5!v§>;
      
      private var §0m§:§5!v§;
      
      public function §>!H§(param1:String, param2:§5!x§)
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || param2)
         {
            this.§2Y§ = new Vector.<§5!v§>();
         }
         do
         {
            super(param1,param2);
         }
         while(_loc3_ && param1);
         
      }
      
      public function §!!#§(param1:String, param2:§5!v§) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || this)
         {
            if(param2 != null)
            {
               loop0:
               do
               {
                  if(!this.§0m§)
                  {
                     if(!_loc4_)
                     {
                        this.§0m§ = param2;
                     }
                     loop1:
                     while(true)
                     {
                        addr28:
                        while(true)
                        {
                           this.§2Y§.push(param2);
                           if(_loc3_ || this)
                           {
                              break;
                           }
                           continue loop1;
                        }
                        continue loop0;
                     }
                  }
                  §§goto(addr28);
               }
               while(!_loc3_);
               
               if(_loc3_)
               {
                  return;
                  addr54:
               }
            }
            throw new Error("Trying to add a null animation");
         }
         §§goto(addr54);
      }
      
      override public function addFrame(param1:String, param2:Number) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && param2))
         {
            this.§0m§.addFrame(param1,param2);
         }
      }
      
      override public function getFrameWithOffset(param1:Number, param2:DisplayObject = null) : DisplayObject
      {
         return this.§0m§.getFrameWithOffset(param1,param2);
      }
      
      override public function getFrame(param1:int, param2:DisplayObject = null) : DisplayObject
      {
         return this.§0m§.getFrame(param1,param2);
      }
      
      override public function get frameCount() : int
      {
         return this.§0m§.frameCount;
      }
      
      override public function get animationLengthMilliSeconds() : Number
      {
         return this.§0m§.animationLengthMilliSeconds;
      }
      
      override public function getSubAnimation(param1:String) : §5!v§
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:§5!v§ = null;
         var _loc3_:int = 0;
         var _loc4_:* = this.§2Y§;
         while(true)
         {
            for each(_loc2_ in _loc4_)
            {
               if(!(_loc5_ || this))
               {
                  break;
               }
               if(_loc2_.name == param1)
               {
                  if(!(_loc6_ && param1))
                  {
                     break;
                  }
               }
            }
            return this.§0m§;
         }
         return _loc2_;
      }
      
      override public function get defaultSubAnimationName() : String
      {
         return this.§0m§.name;
      }
      
      override public function hasSubAnimation(param1:String) : Boolean
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:§5!v§ = null;
         var _loc3_:int = 0;
         var _loc4_:* = this.§2Y§;
         while(true)
         {
            for each(_loc2_ in _loc4_)
            {
               if(!(_loc6_ || _loc2_))
               {
                  break;
               }
               if(_loc2_.name == param1)
               {
                  if(_loc6_)
                  {
                     break;
                  }
               }
            }
            return false;
         }
         return true;
      }
      
      override public function get subAnimationCount() : int
      {
         return this.§2Y§.length;
      }
      
      override public function getSubAnimationFromIndex(param1:int) : §5!v§
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || param1)
         {
            §§push(param1);
            loop0:
            while(true)
            {
               §§push(§§pop() >= 0);
               addr82:
               while(true)
               {
                  if(!§§pop())
                  {
                     while(§§pop())
                     {
                        if(_loc2_)
                        {
                           break;
                        }
                        if(!_loc2_)
                        {
                           return this.§2Y§[param1];
                           addr63:
                        }
                        continue loop0;
                     }
                     return null;
                     addr57:
                  }
                  while(true)
                  {
                     §§pop();
                     continue loop0;
                  }
               }
            }
         }
         §§goto(addr63);
      }
   }
}
